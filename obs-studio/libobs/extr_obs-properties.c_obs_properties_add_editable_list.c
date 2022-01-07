
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int dummy; } ;
struct editable_list_data {int type; void* default_path; void* filter; } ;
typedef struct obs_property obs_property_t ;
typedef int obs_properties_t ;
typedef enum obs_editable_list_type { ____Placeholder_obs_editable_list_type } obs_editable_list_type ;


 int OBS_PROPERTY_EDITABLE_LIST ;
 void* bstrdup (char const*) ;
 struct editable_list_data* get_property_data (struct obs_property*) ;
 scalar_t__ has_prop (int *,char const*) ;
 struct obs_property* new_prop (int *,char const*,char const*,int ) ;

obs_property_t *
obs_properties_add_editable_list(obs_properties_t *props, const char *name,
     const char *desc,
     enum obs_editable_list_type type,
     const char *filter, const char *default_path)
{
 if (!props || has_prop(props, name))
  return ((void*)0);
 struct obs_property *p =
  new_prop(props, name, desc, OBS_PROPERTY_EDITABLE_LIST);

 struct editable_list_data *data = get_property_data(p);
 data->type = type;
 data->filter = bstrdup(filter);
 data->default_path = bstrdup(default_path);
 return p;
}
