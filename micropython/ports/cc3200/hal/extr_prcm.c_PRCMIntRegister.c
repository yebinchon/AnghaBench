
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_PRCM ;
 int IntEnable (int ) ;
 int IntRegister (int ,void (*) ()) ;

void PRCMIntRegister(void (*pfnHandler)(void))
{



  IntRegister(INT_PRCM, pfnHandler);




  IntEnable(INT_PRCM);
}
