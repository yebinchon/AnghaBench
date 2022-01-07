
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __disable_irq () ;
 int interrupts_enabled ;

void disable_interrupts(void) {
  interrupts_enabled = 0;
  __disable_irq();
}
