
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ AES_BASE ;
 int ASSERT (int) ;
 int INT_AES ;
 int IntDisable (int ) ;
 int IntUnregister (int ) ;

void
AESIntUnregister(uint32_t ui32Base)
{



    ASSERT(ui32Base == AES_BASE);




    IntDisable(INT_AES);




    IntUnregister(INT_AES);
}
