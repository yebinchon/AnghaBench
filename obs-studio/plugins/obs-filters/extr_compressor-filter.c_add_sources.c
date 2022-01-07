
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sidechain_prop_info {int sources; int * parent; } ;
typedef int obs_source_t ;


 int OBS_SOURCE_AUDIO ;
 int obs_property_list_add_string (int ,char const*,char const*) ;
 char* obs_source_get_name (int *) ;
 int obs_source_get_output_flags (int *) ;

__attribute__((used)) static bool add_sources(void *data, obs_source_t *source)
{
 struct sidechain_prop_info *info = data;
 uint32_t caps = obs_source_get_output_flags(source);

 if (source == info->parent)
  return 1;
 if ((caps & OBS_SOURCE_AUDIO) == 0)
  return 1;

 const char *name = obs_source_get_name(source);
 obs_property_list_add_string(info->sources, name, name);
 return 1;
}
