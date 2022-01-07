
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_info {int * (* get_properties ) (int *) ;int type_data; int * (* get_properties2 ) (int *,int ) ;} ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int * get_defaults (struct obs_source_info const*) ;
 struct obs_source_info* get_source_info (char const*) ;
 int obs_data_release (int *) ;
 int obs_properties_apply_settings (int *,int *) ;
 int * stub1 (int *,int ) ;
 int * stub2 (int *) ;

obs_properties_t *obs_get_source_properties(const char *id)
{
 const struct obs_source_info *info = get_source_info(id);
 if (info && (info->get_properties || info->get_properties2)) {
  obs_data_t *defaults = get_defaults(info);
  obs_properties_t *props;

  if (info->get_properties2)
   props = info->get_properties2(((void*)0), info->type_data);
  else
   props = info->get_properties(((void*)0));

  obs_properties_apply_settings(props, defaults);
  obs_data_release(defaults);
  return props;
 }
 return ((void*)0);
}
