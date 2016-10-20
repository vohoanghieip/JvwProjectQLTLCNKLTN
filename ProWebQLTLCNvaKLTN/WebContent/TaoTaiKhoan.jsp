<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <style type="text/css">
		label {
			display: inline-block;
		}
		label.error {
			display: inline-block;
			color:red;
			width: 200px;
		}
	</style>
</head>
<body>
	<form method="get" accept-charset="utf-8" id="formTaoMoiTK">
		<div class="container">
        <div class="row">
            <img src="header.jpg" class="img-rounded" alt="Cinque Terre" width="100%">
            <hr />
        </div>
        <div class="row">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="TrangChu.jsp"> Trang chủ</a>
                        </li>
                        <li class="active"><a href="Quanlytaikhoan.jsp">Quản lý tài khoản</a></li>
                        <li><a href="QuanLyDeTai.jsp">Quản lý đề tài</a></li>
                        <li><a href="KiemTraSaoChep.jsp">Kiểm tra sao chép</a></li>
                        <li><a href="SoSanh.jsp">So sánh</a></li>
                        <li><a href="Loc.jsp">Lọc</a></li>
                    </ul>
                    <div style="padding-top:8px;">
                        <label class="col-md-offset-3" style="padding-top:8px;">Admin</label>
                        <a href="DangNhapChung.jsp" class="btn btn-primary pull-right">Đăng xuất</a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-primary">
                    <div class="panel-heading text-center">Tạo mới tài khoản</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="id">Mã GV/ Mã SV</label>
                            <input type="text" class="form-control" id="id" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Họ tên</label>
                            <input type="text" class="form-control" id="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" required>
                        </div>
                        <label>Quyền hệ thống</label>
                        <br />
                        <br />
                        <label><input type="checkbox" value="" name="Check_Quyen">Quyền Giảng Viên</label>
                        <br />
                        <br />
                        <label><input type="checkbox" name="Check_Quyen" value="">Quyền Sinh Viên</label>
                    </div>
                    <div class="panel-footer">
                     	<!--<a href="" target="" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Tạo tài khoản</a> -->                     	
                     	<button id="TaoTK" class="btn btn-primary" type="submit" onclick="DanhSachTaiKhoanGiangVienDuocTao.jsp">Tạo tài khoản</button>
                        <a href="Quanlytaikhoan.jsp" target="" class="btn btn-danger col-md-offset-5">Hủy</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</form>
	<script type="text/javascript">
	$(document).ready(function() {
		//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
		$("#formTaoMoiTK").validate({
			rules: {
				id: "required",
				name: "required",
				email: {
					required: true,
					email: true
				},
			},
			messages: {
				id: "Vui lòng nhập họ",
				name: "Vui lòng nhập tên",
				email: "Vui lòng nhập Email"
			}
		});
	});
	</script>
	<script type="text/javascript">
	$("#TaoTK").on("click",function(){
	    if (($("input[name*='Check_Quyen']:checked").length)<=0) {
	        alert("Bạn phải cập nhật vào một trong hai quyền User");
	    }
	    return true;
	});
</script>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Thông báo</h4>
                </div>
                <div class="modal-body">
                    <p>Tài khoản đã được tạo thành công</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>