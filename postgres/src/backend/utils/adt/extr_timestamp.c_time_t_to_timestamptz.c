
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_time_t ;
typedef scalar_t__ TimestampTz ;


 int POSTGRES_EPOCH_JDATE ;
 int SECS_PER_DAY ;
 int UNIX_EPOCH_JDATE ;
 scalar_t__ USECS_PER_SEC ;

TimestampTz
time_t_to_timestamptz(pg_time_t tm)
{
 TimestampTz result;

 result = (TimestampTz) tm -
  ((POSTGRES_EPOCH_JDATE - UNIX_EPOCH_JDATE) * SECS_PER_DAY);
 result *= USECS_PER_SEC;

 return result;
}
