
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzdb ;


 int const timezonedb_builtin ;

const timelib_tzdb *timelib_builtin_db(void)
{
 return &timezonedb_builtin;
}
