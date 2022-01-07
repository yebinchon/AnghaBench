
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARMTIMER_CLR ;
 int printf (char*) ;
 int put32 (int ,int) ;

void handle_armtimer_irq( void )
{
 put32(ARMTIMER_CLR, 1);
 printf("Timer iterrupt received\n\r");
}
