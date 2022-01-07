
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_tz ;


 int * pg_load_tz (char const*) ;
 int pg_tz_acceptable (int *) ;

__attribute__((used)) static bool
validate_zone(const char *tzname)
{
 pg_tz *tz;

 if (!tzname || !tzname[0])
  return 0;

 tz = pg_load_tz(tzname);
 if (!tz)
  return 0;

 if (!pg_tz_acceptable(tz))
  return 0;

 return 1;
}
