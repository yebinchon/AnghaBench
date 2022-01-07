
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PMC_PCDR; } ;


 scalar_t__* AT91C_AIC_EOICR ;
 int* AT91C_AIC_FVR ;
 int* AT91C_AIC_ICCR ;
 int* AT91C_AIC_IVR ;
 int AT91C_BASE_AIC ;
 TYPE_1__* AT91C_BASE_PMC ;
 int AT91C_ID_SYS ;
 int* AT91C_PIOA_ODR ;
 int* AT91C_PIOA_PER ;
 int AT91F_AIC_DisableIt (int ,int ) ;

__attribute__((used)) static unsigned int AT91F_ResetRegisters(void)
{
 volatile int i = 0;





 *AT91C_PIOA_ODR = 0xFFFFFFFF;
 *AT91C_PIOA_PER = 0xFFFFFFFF;


 AT91F_AIC_DisableIt (AT91C_BASE_AIC, AT91C_ID_SYS);



 AT91C_BASE_PMC->PMC_PCDR = 0xFFFFFFFC;


 __asm__ ("msr CPSR_c, #0xDF");

 *AT91C_AIC_ICCR = 0xffffffff;


 i = *AT91C_AIC_IVR;
 i = *AT91C_AIC_FVR;


 *AT91C_AIC_EOICR = 0;

 return 1;
}
