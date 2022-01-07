
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_data {int type; } ;
struct obs_property {int dummy; } ;
typedef struct obs_property obs_property_t ;
typedef int obs_properties_t ;
typedef enum obs_text_type { ____Placeholder_obs_text_type } obs_text_type ;


 int OBS_PROPERTY_TEXT ;
 struct text_data* get_property_data (struct obs_property*) ;
 scalar_t__ has_prop (int *,char const*) ;
 struct obs_property* new_prop (int *,char const*,char const*,int ) ;

obs_property_t *obs_properties_add_text(obs_properties_t *props,
     const char *name, const char *desc,
     enum obs_text_type type)
{
 if (!props || has_prop(props, name))
  return ((void*)0);

 struct obs_property *p = new_prop(props, name, desc, OBS_PROPERTY_TEXT);
 struct text_data *data = get_property_data(p);
 data->type = type;
 return p;
}
