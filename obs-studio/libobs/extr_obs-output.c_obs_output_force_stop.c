
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ stop_code; } ;
typedef TYPE_1__ obs_output_t ;


 int do_output_signal (TYPE_1__*,char*) ;
 int obs_output_actual_stop (TYPE_1__*,int,int ) ;
 int obs_output_valid (TYPE_1__*,char*) ;
 int stopping (TYPE_1__*) ;

void obs_output_force_stop(obs_output_t *output)
{
 if (!obs_output_valid(output, "obs_output_force_stop"))
  return;

 if (!stopping(output)) {
  output->stop_code = 0;
  do_output_signal(output, "stopping");
 }
 obs_output_actual_stop(output, 1, 0);
}
