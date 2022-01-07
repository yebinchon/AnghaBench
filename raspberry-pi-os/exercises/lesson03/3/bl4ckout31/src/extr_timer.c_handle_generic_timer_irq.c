
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_timer_reset () ;
 int printf (char*) ;

void handle_generic_timer_irq( void )
{
 printf("Timer interrupt received\n\r");
 gen_timer_reset();
}
