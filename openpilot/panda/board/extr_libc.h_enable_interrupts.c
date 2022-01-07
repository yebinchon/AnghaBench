
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __enable_irq () ;
 int interrupts_enabled ;

void enable_interrupts(void) {
  interrupts_enabled = 1;
  __enable_irq();
}
