
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 unsigned long HWREG (scalar_t__) ;
 unsigned long WDT_BASE ;
 scalar_t__ WDT_O_VALUE ;

unsigned long
WatchdogValueGet(unsigned long ulBase)
{



    ASSERT((ulBase == WDT_BASE));




    return(HWREG(ulBase + WDT_O_VALUE));
}
