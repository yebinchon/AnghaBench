
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context; } ;
typedef TYPE_1__ obs_output_t ;
typedef int obs_hotkey_id ;
typedef int obs_hotkey_func ;


 int OBS_HOTKEY_REGISTERER_OUTPUT ;
 int OBS_INVALID_HOTKEY_ID ;
 int lock () ;
 int obs_hotkey_register_internal (int ,int ,int *,char const*,char const*,int ,void*) ;
 int obs_output_get_weak_output (TYPE_1__*) ;
 int unlock () ;

obs_hotkey_id obs_hotkey_register_output(obs_output_t *output, const char *name,
      const char *description,
      obs_hotkey_func func, void *data)
{
 if (!output || !lock())
  return OBS_INVALID_HOTKEY_ID;

 obs_hotkey_id id = obs_hotkey_register_internal(
  OBS_HOTKEY_REGISTERER_OUTPUT,
  obs_output_get_weak_output(output), &output->context, name,
  description, func, data);

 unlock();
 return id;
}
