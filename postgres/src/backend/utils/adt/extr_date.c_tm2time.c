
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_hour; int tm_min; int tm_sec; } ;
typedef scalar_t__ fsec_t ;
typedef scalar_t__ TimeADT ;


 int MINS_PER_HOUR ;
 int SECS_PER_MINUTE ;
 int USECS_PER_SEC ;

int
tm2time(struct pg_tm *tm, fsec_t fsec, TimeADT *result)
{
 *result = ((((tm->tm_hour * MINS_PER_HOUR + tm->tm_min) * SECS_PER_MINUTE) + tm->tm_sec)
      * USECS_PER_SEC) + fsec;
 return 0;
}
