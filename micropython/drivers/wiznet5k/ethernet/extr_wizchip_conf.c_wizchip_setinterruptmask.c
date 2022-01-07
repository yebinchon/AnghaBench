
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ intr_kind ;


 int setIMR (int) ;
 int setSIMR (int) ;

void wizchip_setinterruptmask(intr_kind intr)
{
   uint8_t imr = (uint8_t)intr;
   uint8_t simr = (uint8_t)((uint16_t)intr >> 8);

   imr &= ~(1<<4);






   simr &= 0x0F;






   setIMR(imr);
   setSIMR(simr);

}
