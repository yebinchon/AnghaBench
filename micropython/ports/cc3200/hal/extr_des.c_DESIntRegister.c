
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 scalar_t__ DES_BASE ;
 int INT_DES ;
 int IntEnable (int ) ;
 int IntRegister (int ,void (*) ()) ;

void
DESIntRegister(uint32_t ui32Base, void(*pfnHandler)(void))
{



    ASSERT(ui32Base == DES_BASE);




    IntRegister(INT_DES, pfnHandler);




    IntEnable(INT_DES);
}
