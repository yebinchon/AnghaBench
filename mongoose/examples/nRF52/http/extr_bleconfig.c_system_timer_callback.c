
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iot_timer_time_in_ms_t ;


 int UNUSED_VARIABLE (int ) ;
 int sys_check_timeouts () ;

__attribute__((used)) static void system_timer_callback(iot_timer_time_in_ms_t wall_clock_value)
{
  UNUSED_VARIABLE(wall_clock_value);
  sys_check_timeouts();
}
