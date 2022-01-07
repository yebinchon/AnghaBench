
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_time_t ;
typedef int TimestampTz ;


 int POSTGRES_EPOCH_JDATE ;
 int SECS_PER_DAY ;
 int UNIX_EPOCH_JDATE ;
 int USECS_PER_SEC ;

pg_time_t
timestamptz_to_time_t(TimestampTz t)
{
 pg_time_t result;

 result = (pg_time_t) (t / USECS_PER_SEC +
        ((POSTGRES_EPOCH_JDATE - UNIX_EPOCH_JDATE) * SECS_PER_DAY));

 return result;
}
