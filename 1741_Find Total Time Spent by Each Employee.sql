Create table If Not Exists Employees_43(
emp_id int, 
event_day date, 
in_time int, 
out_time int
);

Truncate table Employees_43;

insert into Employees_43 (emp_id, event_day, in_time, out_time) values (1, '2020-11-28', 4, 32);
insert into Employees_43 (emp_id, event_day, in_time, out_time) values (1, '2020-11-28', 55, 200);
insert into Employees_43 (emp_id, event_day, in_time, out_time) values (1, '2020-12-3', 1, 42);
insert into Employees_43 (emp_id, event_day, in_time, out_time) values (2, '2020-11-28', 3, 33);
insert into Employees_43 (emp_id, event_day, in_time, out_time) values (2, '2020-12-9', 47, 74);

SELECT * FROM Employees_43;

/*
Q. Write a solution to calculate the total time in minutes spent by each employee on each day at the office. Note that within one day, an employee can enter and leave more than once. The time spent in the office for a single entry is out_time - in_time.
Return the result table in any order.
The result format is in the following example.

Input: 
Employees table:
+--------+------------+---------+----------+
| emp_id | event_day  | in_time | out_time |
+--------+------------+---------+----------+
| 1      | 2020-11-28 | 4       | 32       |
| 1      | 2020-11-28 | 55      | 200      |
| 1      | 2020-12-03 | 1       | 42       |
| 2      | 2020-11-28 | 3       | 33       |
| 2      | 2020-12-09 | 47      | 74       |
+--------+------------+---------+----------+
Output: 
+------------+--------+------------+
| day        | emp_id | total_time |
+------------+--------+------------+
| 2020-11-28 | 1      | 173        |
| 2020-11-28 | 2      | 30         |
| 2020-12-03 | 1      | 41         |
| 2020-12-09 | 2      | 27         |
+------------+--------+------------+
Explanation: 
Employee 1 has three events: two on day 2020-11-28 with a total of (32 - 4) + (200 - 55) = 173, and one on day 2020-12-03 with a total of (42 - 1) = 41.
Employee 2 has two events: one on day 2020-11-28 with a total of (33 - 3) = 30, and one on day 2020-12-09 with a total of (74 - 47) = 27.
*/

SELECT event_day AS day, emp_id, SUM(out_time-in_time) AS total_time
FROM Employees_43
GROUP BY day, emp_id;


