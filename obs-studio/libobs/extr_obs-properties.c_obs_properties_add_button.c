
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int dummy; } ;
struct button_data {int callback; } ;
typedef struct obs_property obs_property_t ;
typedef int obs_property_clicked_t ;
typedef int obs_properties_t ;


 int OBS_PROPERTY_BUTTON ;
 struct button_data* get_property_data (struct obs_property*) ;
 scalar_t__ has_prop (int *,char const*) ;
 struct obs_property* new_prop (int *,char const*,char const*,int ) ;

obs_property_t *obs_properties_add_button(obs_properties_t *props,
       const char *name, const char *text,
       obs_property_clicked_t callback)
{
 if (!props || has_prop(props, name))
  return ((void*)0);

 struct obs_property *p =
  new_prop(props, name, text, OBS_PROPERTY_BUTTON);
 struct button_data *data = get_property_data(p);
 data->callback = callback;
 return p;
}
