<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
<head>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<br>
<br>
<div class="container container-md">
 
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
 
 <a class="navbar-brand" href="Student">  AddStudent</a>
  <form class="form-inline">
    <div class="input-group rounded ">
          <input type="search" class="form-control rounded"  id="myInput" onkeyup="myFunction()" placeholder="Search" aria-label="Search"
              aria-describedby="search-addon" />
        <button type="button "  class="btn btn-outline-primary ">search</button>
    </div> 
  </form>
</nav>
<br>

<table class="table table-success table-striped table-sm" id="myTable" width=1000 border="1" >
<tr BGCOLOR="#99CCCC">
<th>Student_Id</th>
<th>Name</th>
<th>Email</th>
<th>Fees</th>
<th>Action</th>
</tr>
<d:forEach var = "std" items = "${Alldata}">
<tr>
<td><d:out value="${std.id}"></d:out></td>
<td><d:out value="${std.name}"></d:out></td>
<td><d:out value="${std.email}"></d:out></td>
<td><d:out value="${std.fee}"></d:out></td>
<td><a href="Delete?id=${std.id}">Delete</a>
    <a href="Update?id=${std.id}">Update</a></td>
</tr>
</d:forEach>
</table>
</div>

<script>
function myFunction() {
 
	var filter = document.getElementById('myInput').value.toUpperCase();
	
       console.log('hello');
	
	/*var myTable = document.getElementById('myTable');
	
	var tr = myTable.getElementByTagName('tr');
	
	for (var  i=0; i<tr.length; i++){
	var td = tr[i].getElementByTagName('td')[0];
	
	if(td){
		var textvalue = td.textContent || td.innerHTML;
		
		if(textvalue.toUpperCase().indexof(filter) > -1){
			tr[i].style.display="";
			else{
				tr[i].style.display="None";
			}
		}
	}
	}*/
	}
	
</script>

</body>
</html>
