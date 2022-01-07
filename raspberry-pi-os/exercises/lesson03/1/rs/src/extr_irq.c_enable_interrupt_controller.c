
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_TIMER_IRQ ;
 int ENABLE_BASIC_IRQS ;
 int put32 (int ,int ) ;

void enable_interrupt_controller() {

  put32(ENABLE_BASIC_IRQS, ARM_TIMER_IRQ);
}
