
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_FLAG ;
 int printf (char*) ;
 int put32 (int ,int) ;

void handle_timer_irq( void )
{
 printf("Timer interrupt received, Local Timer\n\r");
 put32(TIMER_FLAG, (3<<30));

}
