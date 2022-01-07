
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_TIMER_CLR ;
 int printf (char*) ;
 int put32 (int ,int) ;

void handle_arm_timer_irq(void) {
  put32(ARM_TIMER_CLR, 1);
  printf("Timer interrupt received\n\r");
}
