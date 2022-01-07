
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LTIMER_CLR ;
 int LTIMER_CLR_ACK ;
 int printf (char*) ;
 int put32 (int ,int ) ;

void handle_local_timer_irq( void )
{
 printf("Timer interrupt received\n\r");
 put32(LTIMER_CLR, LTIMER_CLR_ACK);
}
