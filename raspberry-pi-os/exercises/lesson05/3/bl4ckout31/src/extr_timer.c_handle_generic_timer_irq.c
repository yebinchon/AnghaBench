
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_timer_reset () ;
 int timer_tick () ;

void handle_generic_timer_irq( void )
{
 gen_timer_reset();
    timer_tick();
}
