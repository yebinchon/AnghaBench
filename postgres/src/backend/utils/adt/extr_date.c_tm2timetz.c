
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pg_tm {int tm_hour; int tm_min; int tm_sec; } ;
typedef scalar_t__ fsec_t ;
struct TYPE_3__ {int zone; scalar_t__ time; } ;
typedef TYPE_1__ TimeTzADT ;


 int MINS_PER_HOUR ;
 int SECS_PER_MINUTE ;
 int USECS_PER_SEC ;

int
tm2timetz(struct pg_tm *tm, fsec_t fsec, int tz, TimeTzADT *result)
{
 result->time = ((((tm->tm_hour * MINS_PER_HOUR + tm->tm_min) * SECS_PER_MINUTE) + tm->tm_sec) *
     USECS_PER_SEC) + fsec;
 result->zone = tz;

 return 0;
}
