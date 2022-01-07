
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t timelib_sll ;


 char const** day_full_names ;
 size_t timelib_day_of_week (size_t,size_t,size_t) ;

__attribute__((used)) static const char *php_date_full_day_name(timelib_sll y, timelib_sll m, timelib_sll d)
{
 timelib_sll day_of_week = timelib_day_of_week(y, m, d);
 if (day_of_week < 0) {
  return "Unknown";
 }
 return day_full_names[day_of_week];
}
