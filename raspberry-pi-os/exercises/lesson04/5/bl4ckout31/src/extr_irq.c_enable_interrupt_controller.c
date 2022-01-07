
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_INT_CTRL_0 ;
 int TIMER_INT_CTRL_0_VALUE ;
 int put32 (int ,int ) ;

void enable_interrupt_controller()
{

    put32(TIMER_INT_CTRL_0, TIMER_INT_CTRL_0_VALUE);
}
