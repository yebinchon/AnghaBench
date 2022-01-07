
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBoolean ;


 int ASSERT (int) ;
 int HWREG (scalar_t__) ;
 unsigned long WDT_BASE ;
 int WDT_CTL_INTEN ;
 scalar_t__ WDT_O_CTL ;

tBoolean
WatchdogRunning(unsigned long ulBase)
{



    ASSERT((ulBase == WDT_BASE));




    return(HWREG(ulBase + WDT_O_CTL) & WDT_CTL_INTEN);
}
