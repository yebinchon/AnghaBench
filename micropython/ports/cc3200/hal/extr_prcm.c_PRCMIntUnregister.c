
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_PRCM ;
 int IntDisable (int ) ;
 int IntUnregister (int ) ;

void PRCMIntUnregister(void)
{



  IntDisable(INT_PRCM);




  IntUnregister(INT_PRCM);
}
