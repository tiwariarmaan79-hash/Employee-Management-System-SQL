CREATE DATABASE employee_management_system;
USE employee_management_system;

CREATE TABLE departments (
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE employee (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100) NOT NULL,
age INT,
gender VARCHAR(20),
city VARCHAR(20),
joining_date DATE,
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE salaries (
salary_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
salary_amount DECIMAL(10,2),
bonus DECIMAL(10,2),
FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE attendence (
attendence_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
attendence_date DATE,
status VARCHAR(100),
FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

INSERT INTO departments
(department_name) 
VALUES
('HR'),
('IT'),
('Finance'),
('Marketing'),
('Operations'),
('Sales'),
('Support'),
('Admin');

INSERT INTO employee
(employee_name, age, gender, city, joining_date, department_id)
VALUES
('Rahul Sharma', 25, 'Male', 'Mumbai', '2023-01-15', 2),
('Priya Mehta', 28, 'Female', 'Delhi', '2022-03-10', 1),
('Aman Verma', 30, 'Male', 'Pune', '2021-07-20', 3),
('Sneha Patil', 27, 'Female', 'Mumbai', '2020-11-05', 4),
('Karan Singh', 29, 'Male', 'Bangalore', '2019-06-18', 2),
('Neha Joshi', 24, 'Female', 'Pune', '2023-02-12', 5),
('Rohit Das', 31, 'Male', 'Delhi', '2018-08-25', 6),
('Anjali Kapoor', 26, 'Female', 'Mumbai', '2021-09-15', 7),
('Vikas Yadav', 32, 'Male', 'Lucknow', '2017-05-10', 3),
('Pooja Shah', 27, 'Female', 'Ahmedabad', '2022-01-11', 1),

('Arjun Nair', 29, 'Male', 'Chennai', '2020-03-17', 2),
('Kritika Jain', 25, 'Female', 'Indore', '2023-04-01', 4),
('Saurabh Mishra', 34, 'Male', 'Kanpur', '2016-12-22', 5),
('Meera Iyer', 28, 'Female', 'Hyderabad', '2021-06-30', 6),
('Nikhil Gupta', 30, 'Male', 'Mumbai', '2019-09-14', 7),
('Simran Kaur', 26, 'Female', 'Chandigarh', '2022-08-19', 8),
('Deepak Roy', 33, 'Male', 'Kolkata', '2018-11-08', 2),
('Riya Sen', 24, 'Female', 'Pune', '2023-05-10', 1),
('Harsh Patel', 29, 'Male', 'Surat', '2020-10-12', 3),
('Tanvi Kulkarni', 27, 'Female', 'Nagpur', '2021-01-05', 4),

('Aditya Rao', 31, 'Male', 'Bangalore', '2017-07-18', 5),
('Ishita Malhotra', 25, 'Female', 'Delhi', '2022-09-09', 6),
('Manoj Tiwari', 35, 'Male', 'Patna', '2015-02-14', 7),
('Kavya Reddy', 28, 'Female', 'Hyderabad', '2020-06-22', 8),
('Yash Thakur', 26, 'Male', 'Mumbai', '2023-03-03', 2),
('Aarti Deshmukh', 29, 'Female', 'Pune', '2019-12-11', 3),
('Sameer Khan', 32, 'Male', 'Bhopal', '2018-04-27', 4),
('Naina Arora', 24, 'Female', 'Jaipur', '2022-11-16', 5),
('Rakesh Kumar', 30, 'Male', 'Delhi', '2021-08-08', 6),
('Shweta Pillai', 27, 'Female', 'Chennai', '2020-05-20', 1);

INSERT INTO salaries
(employee_id, salary_amount, bonus)
VALUES
(1, 55000, 5000),
(2, 60000, 7000),
(3, 75000, 10000),
(4, 50000, 4000),
(5, 68000, 8000),
(6, 52000, 3000),
(7, 72000, 9000),
(8, 48000, 2500),
(9, 81000, 12000),
(10, 59000, 6000),

(11, 65000, 7500),
(12, 53000, 3500),
(13, 88000, 15000),
(14, 62000, 5000),
(15, 71000, 8500),
(16, 47000, 2000),
(17, 79000, 11000),
(18, 51000, 3200),
(19, 76000, 9800),
(20, 56000, 4100),

(21, 83000, 13000),
(22, 54000, 3900),
(23, 92000, 16000),
(24, 60000, 5000),
(25, 58000, 4500),
(26, 74000, 9500),
(27, 69000, 8200),
(28, 50000, 3000),
(29, 64000, 6200),
(30, 57000, 4700);

INSERT INTO attendence
(employee_id, attendence_date, status)
VALUES
(1, '2026-05-01', 'Present'),
(2, '2026-05-01', 'Absent'),
(3, '2026-05-01', 'Present'),
(4, '2026-05-01', 'Leave'),
(5, '2026-05-01', 'Present'),
(6, '2026-05-01', 'Present'),
(7, '2026-05-01', 'Absent'),
(8, '2026-05-01', 'Present'),
(9, '2026-05-01', 'Leave'),
(10, '2026-05-01', 'Present'),

(11, '2026-05-02', 'Present'),
(12, '2026-05-02', 'Absent'),
(13, '2026-05-02', 'Present'),
(14, '2026-05-02', 'Present'),
(15, '2026-05-02', 'Leave'),
(16, '2026-05-02', 'Present'),
(17, '2026-05-02', 'Absent'),
(18, '2026-05-02', 'Present'),
(19, '2026-05-02', 'Present'),
(20, '2026-05-02', 'Leave'),

(21, '2026-05-03', 'Present'),
(22, '2026-05-03', 'Absent'),
(23, '2026-05-03', 'Present'),
(24, '2026-05-03', 'Present'),
(25, '2026-05-03', 'Leave'),
(26, '2026-05-03', 'Present'),
(27, '2026-05-03', 'Present'),
(28, '2026-05-03', 'Absent'),
(29, '2026-05-03', 'Present'),
(30, '2026-05-03', 'Present');


-- Question 1 — Easy Show all employees from Mumbai.
SELECT employee_name,city FROM employee
WHERE city ='Mumbai';
-- Question 2 — Easy Show employees whose age is greater than 30.
SELECT employee_name,age FROM employee
WHERE age>30;
-- Question 3 — Easy Show all female employees.
SELECT employee_name,gender FROM employee
WHERE gender ='female';
-- Question 4 — Easy Show employees who joined after 2021.
SELECT employee_name,joining_date FROM employee
WHERE joining_date > "2021-12-31";
-- Question 5 — Easy Display all employees sorted by joining date.
SELECT employee_name,joining_date FROM employee
ORDER BY joining_date;
-- Question 6 — Easy Show employees whose salary is greater than 70000.
SELECT employee_name,salary_amount FROM salaries
JOIN employee ON employee.employee_id = salaries.employee_id
WHERE salary_amount>70000
ORDER BY salary_amount;
-- Question 7 — Easy Show employees whose bonus is greater than 5000.
SELECT employee_name,bonus FROM employee
JOIN salaries ON employee.employee_id = salaries.employee_id
WHERE bonus>5000
ORDER BY bonus DESC;
-- Question 8 — Easy Show all employees who are absent.
SELECT employee_name,status FROM attendence
JOIN employee ON employee.employee_id=attendence.employee_id
WHERE status='absent';
-- Question 9 — Easy Find employees working in the HR department.
SELECT employee_name,department_name FROM departments
JOIN employee ON employee.department_id = departments.department_id
WHERE department_name ='HR';
-- Question 10 — Easy Show employees whose city starts with 'D'.
SELECT *FROM employee WHERE city LIKE 'D%';
-- Question 11 — Medium Show employee name and department name.(JOIN required)
SELECT employee_name,department_name FROM departments
JOIN employee ON employee.department_id = departments.department_id;
-- Question 12 — Medium Show employee name, salary amount, and bonus.(JOIN required)
SELECT employee_name,salary_amount,bonus FROM salaries
JOIN employee ON employee.employee_id = salaries.employee_id;
-- Question 13 — Medium Find the average salary of all employees.
SELECT AVG(salary_amount) AS Average_salary FROM salaries;
-- Question 14 — Medium Find the highest salary in the company.
SELECT MAX(salary_amount) AS maximum_amount FROM salaries;
-- Question 15 — Medium Find the lowest salary in the company.
SELECT MIN(salary_amount) AS Minimum_salary FROM salaries;
-- Question 16 — Medium Count total employees in each department.
SELECT employee_name,department_name,COUNT(employee_id) AS total_employee FROM departments 
JOIN employee ON employee.department_id = departments.department_id
GROUP BY employee_name,department_name;
-- Question 17 — Medium Find the total salary expense of the company.
SELECT SUM(salary_amount+bonus) AS total_expenses FROM salaries;
-- Question 18 — MediumShow attendance count by status.
SELECT status, COUNT(*) AS attendence_count FROM attendence
GROUP BY status;
-- Question 19 — Medium Show department-wise average salary.
SELECT department_name,AVG(salary_amount) AS Average_salary FROM salaries
JOIN departments ON departments.department_id = salaries.employee_id
GROUP BY department_name
ORDER BY Average_salary; 
-- Question 20 — MediumFind departments having more than 3 employees.(HAVING clause)
SELECT department_name,COUNT(employee_id) FROM employee
JOIN departments ON departments.department_id=employee.department_id
GROUP BY department_name
HAVING COUNT(employee_id)>3;
-- Question 21 — MediumShow top 5 highest paid employees.
SELECT employee_name,salary_amount FROM salaries
JOIN employee ON employee.employee_id = salaries.employee_id
GROUP BY employee_name,salary_amount
ORDER BY salary_amount DESC
LIMIT 5;
-- Question 22 — Medium Find employees earning between 50000 and 70000.
SELECT employee_name,salary_amount FROM salaries
JOIN employee ON employee.employee_id = salaries.employee_id
HAVING salary_amount BETWEEN 50000 AND 70000
ORDER BY salary_amount;
-- Question 23 — MediumShow employee name with total salary (salary + bonus)
SELECT employee_name,SUM(salary_amount+bonus) AS total_salary FROM salaries
JOIN employee ON employee.employee_id=salaries.employee_id
GROUP BY employee_name
ORDER BY total_salary;
-- Question 24 — Medium Find all employees who took leave.
SELECT employee_name,status FROM attendence
JOIN employee ON employee.employee_id = attendence.employee_id
WHERE status='leave'
GROUP BY employee_name,status;
-- Question 25 — Medium Show city-wise employee count.
SELECT city,COUNT(employee_id) FROM employee
GROUP BY city;
-- Question 26 — HardFind employees earning more than the average salary.(Subquery)
SELECT 
e.employee_name,
s.salary_amount
FROM employees e 
JOIN salaries s
ON e.employee_id = s.employee_id
WHERE s.salary_amount > (
	SELECT AVG(salary_amount)
    FROM salaries
    );
-- Question 27 — Hard Find the department with the highest average salary.
SELECT department_name,AVG(salary_amount) AS avg_salary FROM employee
JOIN salaries ON employee.employee_id = salaries.employee_id
JOIN departments ON employee.department_id = departments.department_id
GROUP BY department_name
ORDER BY avg_salary DESC
LIMIT 1;
-- Question 28 — Hard Show employees whose salary is higher than their department average
SELECT
d.department_name,
AVG(s.salary_amount) AS average_salary
FROM departments d
JOIN employee e 
ON d.department_id = e.department_id
JOIN salaries s
ON s.employee_id = e.employee_id
GROUP BY d.department_name
ORDER BY average_salary DESC
LIMIT 1;
-- Question 29 — Hard Find employees who were absent more than once.
SELECT employee_name,COUNT(status) FROM attendence
JOIN employee ON employee.employee_id = attendence.employee_id
WHERE status = 'absent'
GROUP BY employee_name
HAVING COUNT(*) > 1;
INSERT INTO attendence (employee_id, attendence_date, status)
VALUES
(2, '2026-05-04', 'Absent'),
(2, '2026-05-05', 'Absent');
-- Question 30 — HardShow each employee’s:
-- name
-- department
-- salary
-- attendance status
-- (Multiple JOINs required)
SELECT employee_name,department_name,salary_amount,status FROM employee
JOIN departments ON departments.department_id = employee.department_id
JOIN salaries ON salaries.employee_id = employee.employee_id
JOIN attendence ON attendence.employee_id = employee.employee_id
;
-- Question 31 — Hard Find the department with the highest employee count.
SELECT department_name,COUNT(employee_id) AS highest FROM employee
JOIN departments ON departments.department_id = employee.department_id
GROUP BY department_name
ORDER BY highest DESC
LIMIT 1 ;
-- Question 32 — HardShow department-wise total salary expense.
SELECT department_name,SUM(salary_amount + bonus) AS salary_expense FROM salaries
JOIN departments ON departments.department_id=salaries.employee_id
GROUP BY department_name
ORDER BY salary_expense DESC;

-- Question 33 — Hard Find employees who never took leave.
SELECT employee_name FROM employee
WHERE employee_id NOT IN (
SELECT employee_id FROM attendence WHERE status = 'Leave');



-- Question 34 — Hard Create a VIEW called high_salary_employees
-- for employees earning above 80000.
CREATE VIEW high_salary_employees AS
SELECT employee_name,salary_amount FROM employee
JOIN salaries ON salaries.employee_id = employee.employee_id
WHERE salary_amount>80000;
SELECT * FROM high_salary_employees;

-- Question 35 — Hard Find employees who joined earliest in the company.
SELECT employee_name,joining_date FROM employee
WHERE joining_date =(
SELECT MIN(joining_date) FROM employee); 

-- Expert-Level Questions Question 36 — Expert Show each department’s:
-- total employees
-- average salary
-- highest salary
-- lowest salary
-- in a single query.

SELECT
    department_name,
    COUNT(employee.employee_id) AS total_employees,
    AVG(salary_amount) AS average_salary,
    MAX(salary_amount) AS highest_salary,
    MIN(salary_amount) AS lowest_salary
FROM departments
JOIN employee
ON departments.department_id = employee.department_id
JOIN salaries
ON employee.employee_id = salaries.employee_id
GROUP BY department_name;


-- Question 37 — Expert Rank employees based on salary(Window Function)

SELECT
    e.employee_name,
    s.salary_amount,
    RANK() OVER (ORDER BY s.salary_amount DESC) AS salary_rank
FROM employee e
JOIN salaries s
ON e.employee_id = s.employee_id;
-- Question 39: Departments with average salary above company average
SELECT d.department_name,
       AVG(s.salary_amount) AS avg_salary
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
JOIN salaries s
ON e.employee_id = s.employee_id
GROUP BY d.department_name
HAVING AVG(s.salary_amount) >
(
    SELECT AVG(salary_amount)
    FROM salaries
);
SELECT
    e.employee_name,
    ROUND(
        SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END)
        * 100.0
        / COUNT(*),
        2
    ) AS attendance_percentage
FROM employees e
JOIN attendance a
ON e.employee_id = a.employee_id
GROUP BY e.employee_name;
































