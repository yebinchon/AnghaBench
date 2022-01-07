
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int TimestampTz ;


 int POSTGRES_EPOCH_JDATE ;
 int SECS_PER_DAY ;
 int UNIX_EPOCH_JDATE ;
 int USECS_PER_SEC ;
 int gettimeofday (struct timeval*,int *) ;

TimestampTz
GetCurrentTimestamp(void)
{
 TimestampTz result;
 struct timeval tp;

 gettimeofday(&tp, ((void*)0));

 result = (TimestampTz) tp.tv_sec -
  ((POSTGRES_EPOCH_JDATE - UNIX_EPOCH_JDATE) * SECS_PER_DAY);
 result = (result * USECS_PER_SEC) + tp.tv_usec;

 return result;
}
