
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzinfo ;
typedef int timelib_tzdb ;


 int * php_date_parse_tzfile (char*,int const*) ;

timelib_tzinfo *php_date_parse_tzfile_wrapper(char *formal_tzname, const timelib_tzdb *tzdb, int *dummy_error_code)
{
 return php_date_parse_tzfile(formal_tzname, tzdb);
}
