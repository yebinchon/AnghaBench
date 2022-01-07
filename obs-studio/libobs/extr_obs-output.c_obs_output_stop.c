
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int data; } ;
struct TYPE_15__ {scalar_t__ active_delay_ns; TYPE_2__ info; TYPE_1__ context; } ;
typedef TYPE_3__ obs_output_t ;


 int OBS_OUTPUT_ENCODED ;
 int active (TYPE_3__*) ;
 int do_output_signal (TYPE_3__*,char*) ;
 int obs_output_actual_stop (TYPE_3__*,int,int ) ;
 int obs_output_delay_stop (TYPE_3__*) ;
 int obs_output_force_stop (TYPE_3__*) ;
 int obs_output_valid (TYPE_3__*,char*) ;
 int os_gettime_ns () ;
 scalar_t__ reconnecting (TYPE_3__*) ;
 int stopping (TYPE_3__*) ;

void obs_output_stop(obs_output_t *output)
{
 bool encoded;
 if (!obs_output_valid(output, "obs_output_stop"))
  return;
 if (!output->context.data)
  return;
 if (!active(output) && !reconnecting(output))
  return;
 if (reconnecting(output)) {
  obs_output_force_stop(output);
  return;
 }

 encoded = (output->info.flags & OBS_OUTPUT_ENCODED) != 0;

 if (encoded && output->active_delay_ns) {
  obs_output_delay_stop(output);

 } else if (!stopping(output)) {
  do_output_signal(output, "stopping");
  obs_output_actual_stop(output, 0, os_gettime_ns());
 }
}
