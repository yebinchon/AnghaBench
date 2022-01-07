
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESET_VALUE ;
 int TIMER_CS ;
 int TIMER_EN ;
 int TIMER_IRQ_CORE0 ;
 int TIMER_IRQ_EN ;
 int TIMER_LIR ;
 int put32 (int ,int) ;

void timer_init ( void )
{
 put32(TIMER_CS, TIMER_IRQ_EN | TIMER_EN | RESET_VALUE);
 put32(TIMER_LIR, TIMER_IRQ_CORE0);
}
