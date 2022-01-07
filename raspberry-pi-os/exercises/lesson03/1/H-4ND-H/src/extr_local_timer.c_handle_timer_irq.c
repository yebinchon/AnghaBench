
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_ICR ;
 int TIMER_IRQ_CLR ;
 int printf (char*) ;
 int put32 (int ,int ) ;

void handle_timer_irq( void )
{
 put32(TIMER_ICR, TIMER_IRQ_CLR);
 printf("Timer interrupt received\n\r");
}
