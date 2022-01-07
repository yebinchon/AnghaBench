
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREATHING_NO_HALT ;
 scalar_t__ breathing_counter ;
 int breathing_halt ;
 int breathing_interrupt_enable () ;
 int printf (char*) ;

void breathing_enable(void)
{
  printf("breathing_enable()\n");
  breathing_counter = 0;
  breathing_halt = BREATHING_NO_HALT;
  breathing_interrupt_enable();
}
