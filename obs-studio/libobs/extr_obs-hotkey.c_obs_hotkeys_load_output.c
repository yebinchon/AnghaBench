
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef TYPE_1__ obs_output_t ;
typedef int obs_data_t ;


 int enum_context_hotkeys (int *,int ,int *) ;
 int enum_load_bindings ;
 int lock () ;
 int unlock () ;

void obs_hotkeys_load_output(obs_output_t *output, obs_data_t *hotkeys)
{
 if (!output || !hotkeys)
  return;
 if (!lock())
  return;

 enum_context_hotkeys(&output->context, enum_load_bindings, hotkeys);
 unlock();
}
