
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_VARIABLE (void*) ;
 int sys_check_timeouts () ;

__attribute__((used)) static void system_timer_callback(void * p_context)
{
  UNUSED_VARIABLE(p_context);
  sys_check_timeouts();
}
