
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int rseed ;


 scalar_t__ GetCurrentTimestamp () ;
 scalar_t__ MyProcPid ;
 int MyStartTime ;
 scalar_t__ MyStartTimestamp ;
 scalar_t__ getpid () ;
 int pg_strong_random (unsigned int*,int) ;
 int srandom (unsigned int) ;
 int timestamptz_to_time_t (scalar_t__) ;

void
InitProcessGlobals(void)
{
 unsigned int rseed;

 MyProcPid = getpid();
 MyStartTimestamp = GetCurrentTimestamp();
 MyStartTime = timestamptz_to_time_t(MyStartTimestamp);






 if (!pg_strong_random(&rseed, sizeof(rseed)))
 {







  rseed = ((uint64) MyProcPid) ^
   ((uint64) MyStartTimestamp << 12) ^
   ((uint64) MyStartTimestamp >> 20);
 }
 srandom(rseed);
}
