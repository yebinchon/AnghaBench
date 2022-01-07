
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int F_CPU ;
 int SCB_ICSR ;
 int SCB_ICSR_PENDSTSET ;
 int SYST_CVR ;
 int __disable_irq () ;
 int __enable_irq () ;
 int systick_millis_count ;

uint32_t micros(void)
{
 uint32_t count, current, istatus;

 __disable_irq();
 current = SYST_CVR;
 count = systick_millis_count;
 istatus = SCB_ICSR;
 __enable_irq();



 if ((istatus & SCB_ICSR_PENDSTSET) && current > 50) count++;
 current = ((F_CPU / 1000) - 1) - current;
 return count * 1000 + current / (F_CPU / 1000000);
}
