
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int timelib_day_of_week_ex (int ,int ,int ,int ) ;

timelib_sll timelib_day_of_week(timelib_sll y, timelib_sll m, timelib_sll d)
{
 return timelib_day_of_week_ex(y, m, d, 0);
}
