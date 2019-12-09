--find the total sales ($$) and number of orders per month in the database (northwind).
-- don't worry about months with no sales.
SELECT
date_trunc('month', orderdate) m,
ROUND(unitprice*quantity-1) as sales ,orderdate 
FROM orders as o 
JOIN order_details as od ON o.orderid = od.orderid
group by orderdate ,sales 
order by sales desc;







-- Which month has the highest average sales ($$) over every year of the database?
--(hint you can either start from scratch or make use of the previous answer)

