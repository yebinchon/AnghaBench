
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 scalar_t__ DES_BASE ;
 scalar_t__ DES_CTRL_OUTPUT_READY ;
 scalar_t__ DES_O_CTRL ;
 scalar_t__ DES_O_DATA_H ;
 scalar_t__ DES_O_DATA_L ;
 scalar_t__ HWREG (scalar_t__) ;

void
DESDataRead(uint32_t ui32Base, uint8_t *pui8Dest, uint8_t ui8Length)
{
 volatile uint32_t pui32Dest[2];
 uint8_t ui8BytCnt;
 uint8_t *pui8DestTemp;




 ASSERT(ui32Base == DES_BASE);
 if((ui8Length == 0)||(ui8Length>8))
 {
  return;
 }



    while((HWREG(ui32Base + DES_O_CTRL) & DES_CTRL_OUTPUT_READY) == 0)
    {
    }




    pui32Dest[0] = HWREG(DES_BASE + DES_O_DATA_L);
    pui32Dest[1] = HWREG(DES_BASE + DES_O_DATA_H);




    pui8DestTemp = (uint8_t *)pui32Dest;
    for(ui8BytCnt = 0; ui8BytCnt < ui8Length ; ui8BytCnt++)
    {
     *(pui8Dest+ui8BytCnt) = *(pui8DestTemp+ui8BytCnt);
    }
}
