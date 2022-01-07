
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzdb ;
typedef int timelib_tz_get_wrapper ;
typedef int timelib_time ;
typedef int timelib_error_container ;


 int default_format_config ;
 int * timelib_parse_from_format_with_map (char*,char*,size_t,int **,int const*,int ,int *) ;

timelib_time *timelib_parse_from_format(char *format, char *string, size_t len, timelib_error_container **errors, const timelib_tzdb *tzdb, timelib_tz_get_wrapper tz_get_wrapper)
{
 return timelib_parse_from_format_with_map(format, string, len, errors, tzdb, tz_get_wrapper, &default_format_config);
}
