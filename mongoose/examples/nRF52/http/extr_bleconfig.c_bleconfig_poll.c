
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int app_sched_execute () ;
 int sys_check_timeouts () ;

void bleconfig_poll(void) {

  app_sched_execute();
  sys_check_timeouts();
}
