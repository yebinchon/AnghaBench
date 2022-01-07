
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ intr_kind ;


 int setIR (int) ;
 int setSIR (int) ;

void wizchip_clrinterrupt(intr_kind intr)
{
   uint8_t ir = (uint8_t)intr;
   uint8_t sir = (uint8_t)((uint16_t)intr >> 8);

   ir |= (1<<4);






   sir &= 0x0F;






   setIR(ir);
   setSIR(sir);

}
