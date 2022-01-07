
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_pair_id ;
typedef int obs_hotkey_active_func ;


 int OBS_HOTKEY_REGISTERER_FRONTEND ;
 int obs_id_ ;
 int register_hotkey_pair_internal (int ,int *,int ,int *,char const*,char const*,char const*,char const*,int ,int ,void*,void*) ;

obs_hotkey_pair_id obs_hotkey_pair_register_frontend(
 const char *name0, const char *description0, const char *name1,
 const char *description1, obs_hotkey_active_func func0,
 obs_hotkey_active_func func1, void *data0, void *data1)
{
 return register_hotkey_pair_internal(OBS_HOTKEY_REGISTERER_FRONTEND,
          ((void*)0), obs_id_, ((void*)0), name0,
          description0, name1, description1,
          func0, func1, data0, data1);
}
