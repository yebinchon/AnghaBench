
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MMCHS ;
 int IntEnable (int ) ;
 int IntRegister (int ,void (*) ()) ;

void
SDHostIntRegister(unsigned long ulBase, void (*pfnHandler)(void))
{



  IntRegister(INT_MMCHS, pfnHandler);




  IntEnable(INT_MMCHS);
}
