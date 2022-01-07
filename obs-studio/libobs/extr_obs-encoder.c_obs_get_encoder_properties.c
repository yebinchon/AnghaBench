
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder_info {int * (* get_properties ) (int *) ;int type_data; int * (* get_properties2 ) (int *,int ) ;} ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 struct obs_encoder_info* find_encoder (char const*) ;
 int * get_defaults (struct obs_encoder_info const*) ;
 int obs_data_release (int *) ;
 int obs_properties_apply_settings (int *,int *) ;
 int * stub1 (int *,int ) ;
 int * stub2 (int *) ;

obs_properties_t *obs_get_encoder_properties(const char *id)
{
 const struct obs_encoder_info *ei = find_encoder(id);
 if (ei && (ei->get_properties || ei->get_properties2)) {
  obs_data_t *defaults = get_defaults(ei);
  obs_properties_t *properties = ((void*)0);

  if (ei->get_properties2) {
   properties = ei->get_properties2(((void*)0), ei->type_data);
  } else if (ei->get_properties) {
   properties = ei->get_properties(((void*)0));
  }

  obs_properties_apply_settings(properties, defaults);
  obs_data_release(defaults);
  return properties;
 }
 return ((void*)0);
}
