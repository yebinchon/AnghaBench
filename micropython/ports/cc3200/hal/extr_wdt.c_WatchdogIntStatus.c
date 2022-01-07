
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBoolean ;


 int ASSERT (int) ;
 unsigned long HWREG (scalar_t__) ;
 unsigned long WDT_BASE ;
 scalar_t__ WDT_O_MIS ;
 scalar_t__ WDT_O_RIS ;

unsigned long
WatchdogIntStatus(unsigned long ulBase, tBoolean bMasked)
{



    ASSERT((ulBase == WDT_BASE));





    if(bMasked)
    {
        return(HWREG(ulBase + WDT_O_MIS));
    }
    else
    {
        return(HWREG(ulBase + WDT_O_RIS));
    }
}
