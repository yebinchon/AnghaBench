
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int timelib_day_of_week (int,int,int) ;

timelib_sll timelib_daynr_from_weeknr(timelib_sll iy, timelib_sll iw, timelib_sll id)
{
 timelib_sll dow, day;


 dow = timelib_day_of_week(iy, 1, 1);

 day = 0 - (dow > 4 ? dow - 7 : dow);


 return day + ((iw - 1) * 7) + id;
}
