
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ AES_BASE ;
 scalar_t__ AES_O_IV_IN_0 ;
 scalar_t__ AES_O_IV_IN_1 ;
 scalar_t__ AES_O_IV_IN_2 ;
 scalar_t__ AES_O_IV_IN_3 ;
 int ASSERT (int) ;
 scalar_t__ HWREG (scalar_t__) ;

void
AESIVGet(uint32_t ui32Base, uint8_t *pui8IVdata)
{



    ASSERT(ui32Base == AES_BASE);




    *((uint32_t *)(pui8IVdata+ 0)) = HWREG(ui32Base + AES_O_IV_IN_0);
    *((uint32_t *)(pui8IVdata+ 4)) = HWREG(ui32Base + AES_O_IV_IN_1);
    *((uint32_t *)(pui8IVdata+ 8)) = HWREG(ui32Base + AES_O_IV_IN_2);
    *((uint32_t *)(pui8IVdata+12)) = HWREG(ui32Base + AES_O_IV_IN_3);
}
