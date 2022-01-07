
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_CTRL ;
 unsigned int get32 (int ) ;
 int put32 (int ,unsigned int) ;

void enable_interrupt_controller()
{

 unsigned int local_timer_ctrl = get32(TIMER_CTRL);
 put32(TIMER_CTRL, (local_timer_ctrl | (1 << 29)));
}
