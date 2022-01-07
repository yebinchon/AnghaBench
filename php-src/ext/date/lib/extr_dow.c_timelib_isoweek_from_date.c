
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int timelib_day_of_week (int,int,int) ;
 int timelib_day_of_year (int,int,int) ;
 int timelib_is_leap (int) ;

void timelib_isoweek_from_date(timelib_sll y, timelib_sll m, timelib_sll d, timelib_sll *iw, timelib_sll *iy)
{
 int y_leap, prev_y_leap, doy, jan1weekday, weekday;

 y_leap = timelib_is_leap(y);
 prev_y_leap = timelib_is_leap(y-1);
 doy = timelib_day_of_year(y, m, d) + 1;
 if (y_leap && m > 2) {
  doy++;
 }
 jan1weekday = timelib_day_of_week(y, 1, 1);
 weekday = timelib_day_of_week(y, m, d);
 if (weekday == 0) weekday = 7;
 if (jan1weekday == 0) jan1weekday = 7;

 if (doy <= (8 - jan1weekday) && jan1weekday > 4) {
  *iy = y - 1;
  if (jan1weekday == 5 || (jan1weekday == 6 && prev_y_leap)) {
   *iw = 53;
  } else {
   *iw = 52;
  }
 } else {
  *iy = y;
 }

 if (*iy == y) {
  int i;

  i = y_leap ? 366 : 365;
  if ((i - (doy - y_leap)) < (4 - weekday)) {
   *iy = y + 1;
   *iw = 1;
   return;
  }
 }

 if (*iy == y) {
  int j;

  j = doy + (7 - weekday) + (jan1weekday - 1);
  *iw = j / 7;
  if (jan1weekday > 4) {
   *iw -= 1;
  }
 }
}
