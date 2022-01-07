
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int timelib_day_of_week_ex (int ,int ,int ,int) ;
 int timelib_isoweek_from_date (int ,int ,int ,int *,int *) ;

void timelib_isodate_from_date(timelib_sll y, timelib_sll m, timelib_sll d, timelib_sll *iy, timelib_sll *iw, timelib_sll *id)
{
 timelib_isoweek_from_date(y, m, d, iw, iy);
 *id = timelib_day_of_week_ex(y, m, d, 1);
}
