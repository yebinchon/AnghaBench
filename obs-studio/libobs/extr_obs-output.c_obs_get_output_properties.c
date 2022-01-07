
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output_info {int * (* get_properties ) (int *) ;} ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 struct obs_output_info* find_output (char const*) ;
 int * get_defaults (struct obs_output_info const*) ;
 int obs_data_release (int *) ;
 int obs_properties_apply_settings (int *,int *) ;
 int * stub1 (int *) ;

obs_properties_t *obs_get_output_properties(const char *id)
{
 const struct obs_output_info *info = find_output(id);
 if (info && info->get_properties) {
  obs_data_t *defaults = get_defaults(info);
  obs_properties_t *properties;

  properties = info->get_properties(((void*)0));
  obs_properties_apply_settings(properties, defaults);
  obs_data_release(defaults);
  return properties;
 }
 return ((void*)0);
}
