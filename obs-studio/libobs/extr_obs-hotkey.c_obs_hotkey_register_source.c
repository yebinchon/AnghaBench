
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ private; } ;
struct TYPE_5__ {TYPE_4__ context; } ;
typedef TYPE_1__ obs_source_t ;
typedef int obs_hotkey_id ;
typedef int obs_hotkey_func ;


 int OBS_HOTKEY_REGISTERER_SOURCE ;
 int OBS_INVALID_HOTKEY_ID ;
 int lock () ;
 int obs_hotkey_register_internal (int ,int ,TYPE_4__*,char const*,char const*,int ,void*) ;
 int obs_source_get_weak_source (TYPE_1__*) ;
 int unlock () ;

obs_hotkey_id obs_hotkey_register_source(obs_source_t *source, const char *name,
      const char *description,
      obs_hotkey_func func, void *data)
{
 if (!source || source->context.private || !lock())
  return OBS_INVALID_HOTKEY_ID;

 obs_hotkey_id id = obs_hotkey_register_internal(
  OBS_HOTKEY_REGISTERER_SOURCE,
  obs_source_get_weak_source(source), &source->context, name,
  description, func, data);

 unlock();
 return id;
}
