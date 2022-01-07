
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ AES_BASE ;
 scalar_t__ AES_O_TAG_OUT_0 ;
 scalar_t__ AES_O_TAG_OUT_1 ;
 scalar_t__ AES_O_TAG_OUT_2 ;
 scalar_t__ AES_O_TAG_OUT_3 ;
 int ASSERT (int) ;
 scalar_t__ HWREG (scalar_t__) ;

void
AESTagRead(uint32_t ui32Base, uint8_t *pui8TagData)
{



    ASSERT(ui32Base == AES_BASE);




    *((uint32_t *)(pui8TagData+0)) = HWREG((ui32Base + AES_O_TAG_OUT_0));
    *((uint32_t *)(pui8TagData+4)) = HWREG((ui32Base + AES_O_TAG_OUT_1));
    *((uint32_t *)(pui8TagData+8)) = HWREG((ui32Base + AES_O_TAG_OUT_2));
    *((uint32_t *)(pui8TagData+12)) = HWREG((ui32Base + AES_O_TAG_OUT_3));
}
