
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBoolean ;


 int ASSERT (int) ;
 scalar_t__ HWREG (scalar_t__) ;
 unsigned long WDT_BASE ;
 scalar_t__ WDT_LOCK_LOCKED ;
 scalar_t__ WDT_O_LOCK ;

tBoolean
WatchdogLockState(unsigned long ulBase)
{



    ASSERT((ulBase == WDT_BASE));




    return((HWREG(ulBase + WDT_O_LOCK) == WDT_LOCK_LOCKED) ? 1 : 0);
}
