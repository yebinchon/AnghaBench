
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_IRQ ;
 int ENABLE_IRQS_1 ;
 int SYSTEM_TIMER_IRQ_1 ;
 int put32 (int ,int) ;

void enable_interrupt_controller()
{
 put32(ENABLE_IRQS_1, SYSTEM_TIMER_IRQ_1 | AUX_IRQ);
}
