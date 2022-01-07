
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int obs_source_t ;
typedef int obs_data_t ;


 int * obs_source_create_internal (char const*,char const*,int *,int *,int,int ) ;

obs_source_t *obs_source_create_set_last_ver(const char *id, const char *name,
          obs_data_t *settings,
          obs_data_t *hotkey_data,
          uint32_t last_obs_ver)
{
 return obs_source_create_internal(id, name, settings, hotkey_data,
       0, last_obs_ver);
}
