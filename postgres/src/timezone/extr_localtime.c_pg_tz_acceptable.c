
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {scalar_t__ tm_sec; } ;
typedef int pg_tz ;
typedef int pg_time_t ;


 int POSTGRES_EPOCH_JDATE ;
 int SECS_PER_DAY ;
 int UNIX_EPOCH_JDATE ;
 struct pg_tm* pg_localtime (int*,int *) ;

bool
pg_tz_acceptable(pg_tz *tz)
{
 struct pg_tm *tt;
 pg_time_t time2000;






 time2000 = (POSTGRES_EPOCH_JDATE - UNIX_EPOCH_JDATE) * SECS_PER_DAY;
 tt = pg_localtime(&time2000, tz);
 if (!tt || tt->tm_sec != 0)
  return 0;

 return 1;
}
