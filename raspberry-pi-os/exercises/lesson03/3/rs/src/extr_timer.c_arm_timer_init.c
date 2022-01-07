
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_TIMER_CTRL ;
 int ARM_TIMER_LOAD ;
 int CTRL_23BIT ;
 int CTRL_ENABLE ;
 int CTRL_INT_ENABLE ;
 int interval ;
 int put32 (int ,int) ;

void arm_timer_init(void) {



  put32(ARM_TIMER_LOAD, interval);
  put32(ARM_TIMER_CTRL, CTRL_ENABLE | CTRL_INT_ENABLE | CTRL_23BIT);
}
