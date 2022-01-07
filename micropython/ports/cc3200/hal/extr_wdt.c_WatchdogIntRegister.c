
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int INT_WDT ;
 int IntEnable (int ) ;
 int IntRegister (int ,void (*) ()) ;
 unsigned long WDT_BASE ;

void
WatchdogIntRegister(unsigned long ulBase, void (*pfnHandler)(void))
{



    ASSERT((ulBase == WDT_BASE));





    IntRegister(INT_WDT, pfnHandler);
    IntEnable(INT_WDT);
}
