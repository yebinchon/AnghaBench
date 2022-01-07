
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timelib_sll ;


 scalar_t__* days_in_month ;
 scalar_t__* days_in_month_leap ;
 int dec_month (scalar_t__*,scalar_t__*) ;
 int do_range_limit (int,int,int,scalar_t__*,scalar_t__*) ;
 int inc_month (scalar_t__*,scalar_t__*) ;
 scalar_t__ timelib_is_leap (scalar_t__) ;

__attribute__((used)) static void do_range_limit_days_relative(timelib_sll *base_y, timelib_sll *base_m, timelib_sll *y, timelib_sll *m, timelib_sll *d, timelib_sll invert)
{
 timelib_sll leapyear;
 timelib_sll month, year;
 timelib_sll days;

 do_range_limit(1, 13, 12, base_m, base_y);

 year = *base_y;
 month = *base_m;




 if (!invert) {
  while (*d < 0) {
   dec_month(&year, &month);
   leapyear = timelib_is_leap(year);
   days = leapyear ? days_in_month_leap[month] : days_in_month[month];



   *d += days;
   (*m)--;
  }
 } else {
  while (*d < 0) {
   leapyear = timelib_is_leap(year);
   days = leapyear ? days_in_month_leap[month] : days_in_month[month];



   *d += days;
   (*m)--;
   inc_month(&year, &month);
  }
 }



}
