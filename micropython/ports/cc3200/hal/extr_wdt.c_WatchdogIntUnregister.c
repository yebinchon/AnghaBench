
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int INT_WDT ;
 int IntDisable (int ) ;
 int IntUnregister (int ) ;
 unsigned long WDT_BASE ;

void
WatchdogIntUnregister(unsigned long ulBase)
{



    ASSERT((ulBase == WDT_BASE));



    IntDisable(INT_WDT);




    IntUnregister(INT_WDT);
}
