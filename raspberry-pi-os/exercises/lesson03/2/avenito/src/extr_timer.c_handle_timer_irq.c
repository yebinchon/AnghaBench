
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_C1 ;
 int TIMER_CS ;
 int TIMER_CS_M1 ;
 int curVal ;
 scalar_t__ interval ;
 int printf (char*) ;
 int put32 (int ,int ) ;

void handle_timer_irq( void )
{
 curVal += interval;
 put32(TIMER_C1, curVal);
 put32(TIMER_CS, TIMER_CS_M1);
 printf("Timer interrupt received\n\r");
}
