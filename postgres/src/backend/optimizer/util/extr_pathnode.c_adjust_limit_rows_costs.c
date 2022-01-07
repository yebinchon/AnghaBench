
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef double Cost ;


 double clamp_row_est (double) ;

void
adjust_limit_rows_costs(double *rows,
      Cost *startup_cost,
      Cost *total_cost,
      int64 offset_est,
      int64 count_est)
{
 double input_rows = *rows;
 Cost input_startup_cost = *startup_cost;
 Cost input_total_cost = *total_cost;

 if (offset_est != 0)
 {
  double offset_rows;

  if (offset_est > 0)
   offset_rows = (double) offset_est;
  else
   offset_rows = clamp_row_est(input_rows * 0.10);
  if (offset_rows > *rows)
   offset_rows = *rows;
  if (input_rows > 0)
   *startup_cost +=
    (input_total_cost - input_startup_cost)
    * offset_rows / input_rows;
  *rows -= offset_rows;
  if (*rows < 1)
   *rows = 1;
 }

 if (count_est != 0)
 {
  double count_rows;

  if (count_est > 0)
   count_rows = (double) count_est;
  else
   count_rows = clamp_row_est(input_rows * 0.10);
  if (count_rows > *rows)
   count_rows = *rows;
  if (input_rows > 0)
   *total_cost = *startup_cost +
    (input_total_cost - input_startup_cost)
    * count_rows / input_rows;
  *rows = count_rows;
  if (*rows < 1)
   *rows = 1;
 }
}
