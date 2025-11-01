create database employee;

use employee;

Create table departments(
department_id int Primary key,
department_name varchar(100)
);

create table location(
location_id int primary key,
location varchar(30)
);

Create table employees(
employee_id int primary key,
employee_name varchar(50),
gender enum('m', 'f'),
age int,
hire_date date,
designation varchar(100),
department_id int,
foreign key (department_id) references departments(department_id), 
location_id int,
foreign key (Location_id) references location(location_id),
salary decimal(10,2)
);

Alter table employees
add column email varchar(100);

alter table employees
modify column designation varchar(200);

alter table employees drop column age;

alter table employees 
rename column hire_date to date_of_joining;

rename table departments to departments_info;

rename table location to locations;

truncate table employees;

drop table employees;

drop database employee;

drop database if exists employee;
create database employee;

use employee;

Create table departments(
department_id int Primary key,
department_name varchar(100) not null unique
);

create table location(
location_id int auto_increment primary key,
location varchar(150) not null unique
);

Create table employees(
employee_id int auto_increment primary key,
employee_name varchar(50) not null,
gender char(1) check(gender in ('M', 'F')),
age int check (age >= 18),
hire_date date default (current_date),
designation varchar(100),
department_id int,
foreign key (department_id) references departments(department_id), 
location_id int,
foreign key (Location_id) references location(location_id),
salary decimal(10,2)
);
