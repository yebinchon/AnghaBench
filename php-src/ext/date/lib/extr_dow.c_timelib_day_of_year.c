
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t timelib_sll ;


 size_t* d_table_common ;
 size_t* d_table_leap ;
 scalar_t__ timelib_is_leap (size_t) ;

timelib_sll timelib_day_of_year(timelib_sll y, timelib_sll m, timelib_sll d)
{
 return (timelib_is_leap(y) ? d_table_leap[m] : d_table_common[m]) + d - 1;
}
