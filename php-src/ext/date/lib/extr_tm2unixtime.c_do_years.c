
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int DAYS_PER_LYEAR ;
 int DAYS_PER_YEAR ;
 int SECS_PER_DAY ;
 int SECS_PER_ERA ;
 scalar_t__ timelib_is_leap (int) ;

__attribute__((used)) static timelib_sll do_years(timelib_sll year)
{
 timelib_sll i;
 timelib_sll res = 0;
 timelib_sll eras;

 eras = (year - 1970) / 40000;
 if (eras != 0) {
  year = year - (eras * 40000);
  res += (SECS_PER_ERA * eras * 100);
 }

 if (year >= 1970) {
  for (i = year - 1; i >= 1970; i--) {
   if (timelib_is_leap(i)) {
    res += (DAYS_PER_LYEAR * SECS_PER_DAY);
   } else {
    res += (DAYS_PER_YEAR * SECS_PER_DAY);
   }
  }
 } else {
  for (i = 1969; i >= year; i--) {
   if (timelib_is_leap(i)) {
    res -= (DAYS_PER_LYEAR * SECS_PER_DAY);
   } else {
    res -= (DAYS_PER_YEAR * SECS_PER_DAY);
   }
  }
 }
 return res;
}
