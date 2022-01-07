
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef int fsec_t ;


 int GetCurrentTransactionStartTimestamp () ;
 int timestamp2tm (int ,int*,struct pg_tm*,int *,int *,int *) ;

void
GetCurrentTimeUsec(struct pg_tm *tm, fsec_t *fsec, int *tzp)
{
 int tz;

 timestamp2tm(GetCurrentTransactionStartTimestamp(), &tz, tm, fsec,
     ((void*)0), ((void*)0));

 if (tzp != ((void*)0))
  *tzp = tz;
}
