
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int timelib_days_in_month (int,int) ;

int timelib_valid_date(timelib_sll y, timelib_sll m, timelib_sll d)
{
 if (m < 1 || m > 12 || d < 1 || d > timelib_days_in_month(y, m)) {
  return 0;
 }
 return 1;
}
