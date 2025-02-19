
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context; } ;
typedef TYPE_1__ obs_output_t ;
typedef int obs_hotkey_pair_id ;
typedef int obs_hotkey_active_func ;


 int OBS_HOTKEY_REGISTERER_OUTPUT ;
 int OBS_INVALID_HOTKEY_PAIR_ID ;
 int register_hotkey_pair_internal (int ,TYPE_1__*,int ,int *,char const*,char const*,char const*,char const*,int ,int ,void*,void*) ;
 int weak_output_ref ;

obs_hotkey_pair_id obs_hotkey_pair_register_output(
 obs_output_t *output, const char *name0, const char *description0,
 const char *name1, const char *description1,
 obs_hotkey_active_func func0, obs_hotkey_active_func func1, void *data0,
 void *data1)
{
 if (!output)
  return OBS_INVALID_HOTKEY_PAIR_ID;
 return register_hotkey_pair_internal(OBS_HOTKEY_REGISTERER_OUTPUT,
          output, weak_output_ref,
          &output->context, name0,
          description0, name1, description1,
          func0, func1, data0, data1);
}
