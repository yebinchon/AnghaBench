
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tz_lookup_table ;


 int const* timelib_timezone_lookup ;

const timelib_tz_lookup_table *timelib_timezone_abbreviations_list(void)
{
 return timelib_timezone_lookup;
}
