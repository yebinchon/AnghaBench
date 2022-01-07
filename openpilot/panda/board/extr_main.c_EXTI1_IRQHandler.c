
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int started_interrupt_handler (int) ;

void EXTI1_IRQHandler(void) {
  started_interrupt_handler(1);
}
