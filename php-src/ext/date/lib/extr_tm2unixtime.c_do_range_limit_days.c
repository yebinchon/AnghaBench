
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t timelib_sll ;


 size_t DAYS_PER_LYEAR_PERIOD ;
 size_t YEARS_PER_LYEAR_PERIOD ;
 size_t* days_in_month ;
 size_t* days_in_month_leap ;
 int do_range_limit (int,int,int,size_t*,size_t*) ;
 size_t timelib_is_leap (size_t) ;

__attribute__((used)) static int do_range_limit_days(timelib_sll *y, timelib_sll *m, timelib_sll *d)
{
 timelib_sll leapyear;
 timelib_sll days_this_month;
 timelib_sll last_month, last_year;
 timelib_sll days_last_month;


 if (*d >= DAYS_PER_LYEAR_PERIOD || *d <= -DAYS_PER_LYEAR_PERIOD) {
  *y += YEARS_PER_LYEAR_PERIOD * (*d / DAYS_PER_LYEAR_PERIOD);
  *d -= DAYS_PER_LYEAR_PERIOD * (*d / DAYS_PER_LYEAR_PERIOD);
 }

 do_range_limit(1, 13, 12, m, y);

 leapyear = timelib_is_leap(*y);
 days_this_month = leapyear ? days_in_month_leap[*m] : days_in_month[*m];
 last_month = (*m) - 1;

 if (last_month < 1) {
  last_month += 12;
  last_year = (*y) - 1;
 } else {
  last_year = (*y);
 }
 leapyear = timelib_is_leap(last_year);
 days_last_month = leapyear ? days_in_month_leap[last_month] : days_in_month[last_month];

 if (*d <= 0) {
  *d += days_last_month;
  (*m)--;
  return 1;
 }
 if (*d > days_this_month) {
  *d -= days_this_month;
  (*m)++;
  return 1;
 }
 return 0;
}
