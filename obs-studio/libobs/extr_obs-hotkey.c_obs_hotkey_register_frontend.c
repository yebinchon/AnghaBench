
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_id ;
typedef int obs_hotkey_func ;


 int OBS_HOTKEY_REGISTERER_FRONTEND ;
 int OBS_INVALID_HOTKEY_ID ;
 int lock () ;
 int obs_hotkey_register_internal (int ,int *,int *,char const*,char const*,int ,void*) ;
 int unlock () ;

obs_hotkey_id obs_hotkey_register_frontend(const char *name,
        const char *description,
        obs_hotkey_func func, void *data)
{
 if (!lock())
  return OBS_INVALID_HOTKEY_ID;

 obs_hotkey_id id = obs_hotkey_register_internal(
  OBS_HOTKEY_REGISTERER_FRONTEND, ((void*)0), ((void*)0), name, description,
  func, data);

 unlock();
 return id;
}
