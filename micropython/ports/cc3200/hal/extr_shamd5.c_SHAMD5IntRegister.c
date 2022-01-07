
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 int INT_SHA ;
 int IntEnable (int ) ;
 int IntRegister (int ,void (*) ()) ;
 scalar_t__ SHAMD5_BASE ;

void
SHAMD5IntRegister(uint32_t ui32Base, void(*pfnHandler)(void))
{



    ASSERT(ui32Base == SHAMD5_BASE);




    IntRegister(INT_SHA, pfnHandler);




    IntEnable(INT_SHA);
}
