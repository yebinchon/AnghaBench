
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORE0_TIMER_IRQ_CTRL ;
 int NON_SECURE_TIMER_IRQ ;
 int put32 (int ,int ) ;

void enable_interrupt_controller()
{
 put32(CORE0_TIMER_IRQ_CTRL, NON_SECURE_TIMER_IRQ);
}
