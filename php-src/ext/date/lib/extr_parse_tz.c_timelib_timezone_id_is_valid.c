
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzdb ;


 int seek_to_tz_position (unsigned char const**,char*,int const*) ;

int timelib_timezone_id_is_valid(char *timezone, const timelib_tzdb *tzdb)
{
 const unsigned char *tzf;
 return (seek_to_tz_position(&tzf, timezone, tzdb));
}
