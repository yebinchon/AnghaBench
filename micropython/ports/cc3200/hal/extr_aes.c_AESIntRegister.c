
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ AES_BASE ;
 int ASSERT (int) ;
 int INT_AES ;
 int IntEnable (int ) ;
 int IntRegister (int ,void (*) ()) ;

void
AESIntRegister(uint32_t ui32Base, void(*pfnHandler)(void))
{



    ASSERT(ui32Base == AES_BASE);




    IntRegister(INT_AES, pfnHandler);




    IntEnable(INT_AES);
}
