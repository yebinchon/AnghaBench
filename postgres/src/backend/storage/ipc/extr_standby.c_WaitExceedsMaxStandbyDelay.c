
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ GetCurrentTimestamp () ;
 scalar_t__ GetStandbyLimitTime () ;
 int pg_usleep (int) ;
 int standbyWait_us ;

__attribute__((used)) static bool
WaitExceedsMaxStandbyDelay(void)
{
 TimestampTz ltime;

 CHECK_FOR_INTERRUPTS();


 ltime = GetStandbyLimitTime();
 if (ltime && GetCurrentTimestamp() >= ltime)
  return 1;




 pg_usleep(standbyWait_us);





 standbyWait_us *= 2;
 if (standbyWait_us > 1000000)
  standbyWait_us = 1000000;

 return 0;
}
