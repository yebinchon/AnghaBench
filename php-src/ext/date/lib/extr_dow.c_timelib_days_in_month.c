
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t timelib_sll ;


 size_t* ml_table_common ;
 size_t* ml_table_leap ;
 scalar_t__ timelib_is_leap (size_t) ;

timelib_sll timelib_days_in_month(timelib_sll y, timelib_sll m)
{
 return timelib_is_leap(y) ? ml_table_leap[m] : ml_table_common[m];
}
