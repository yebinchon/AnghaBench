
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int stop_code; int delay_active; int delay_restart_refs; } ;
typedef TYPE_1__ obs_output_t ;


 scalar_t__ can_reconnect (TYPE_1__*,int) ;
 scalar_t__ delay_active (TYPE_1__*) ;
 int obs_output_end_data_capture (TYPE_1__*) ;
 int obs_output_end_data_capture_internal (TYPE_1__*,int) ;
 int obs_output_valid (TYPE_1__*,char*) ;
 int os_atomic_inc_long (int *) ;
 int os_atomic_set_bool (int *,int) ;
 int output_reconnect (TYPE_1__*) ;

void obs_output_signal_stop(obs_output_t *output, int code)
{
 if (!obs_output_valid(output, "obs_output_signal_stop"))
  return;

 output->stop_code = code;

 if (can_reconnect(output, code)) {
  if (delay_active(output))
   os_atomic_inc_long(&output->delay_restart_refs);
  obs_output_end_data_capture_internal(output, 0);
  output_reconnect(output);
 } else {
  if (delay_active(output))
   os_atomic_set_bool(&output->delay_active, 0);
  obs_output_end_data_capture(output);
 }
}
