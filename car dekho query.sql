use cardekho;
--Q1. Read car data
 select * from car_dekho;

--Q2 Total cars: to get a count of total records
select count(name) from car_dekho;

--Q3The manager asked the employee how many cars will be available in 2023?
select COUNT(year) from car_dekho
WHERE year = 2023;

--Q4 The manager asked the employee how many cars where available in 2020, 2021,2022--
select year, COUNT(year) from car_dekho
WHERE year in (2020,2021,2022)
GROUP BY year;

--Q5 client asked to print all the total of cars by year, t dont see all the details
select year, COUNT(year) from car_dekho
GROUP BY year;

--Q6client asked to car dealer how many disele cars will there be in 2020
select year,COUNT(*) from car_dekho
WHERE year=2020 and fuel = "Diesel";

--Q7 client requested a car dealer agent How many petrol cars are there in 2020?
select year,COUNT(*) from car_dekho
WHERE year=2020 and fuel = "Petrol";

Q8 All petrol, diesel and cng come by all year
select year, fuel, count(*) from car_dekho
WHERE fuel != "electric"
GROUP BY year, fuel;

Q9 Years that had more than 100 cars?
SELECT year, COUNT(*) AS no_of_cars
FROM car_dekho
GROUP BY year
HAVING COUNT(*) > 100;

Q10 The manager said to the employee all cars count detail between 2015 and 2023; complete list
select * from car_dekho
WHERE year between 2015 and 2023;
