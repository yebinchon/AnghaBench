
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int dummy; } ;
struct frame_rate_data {int ranges; int extra_options; } ;
typedef struct obs_property obs_property_t ;
typedef int obs_properties_t ;


 int OBS_PROPERTY_FRAME_RATE ;
 int da_init (int ) ;
 struct frame_rate_data* get_property_data (struct obs_property*) ;
 scalar_t__ has_prop (int *,char const*) ;
 struct obs_property* new_prop (int *,char const*,char const*,int ) ;

obs_property_t *obs_properties_add_frame_rate(obs_properties_t *props,
           const char *name,
           const char *desc)
{
 if (!props || has_prop(props, name))
  return ((void*)0);

 struct obs_property *p =
  new_prop(props, name, desc, OBS_PROPERTY_FRAME_RATE);

 struct frame_rate_data *data = get_property_data(p);
 da_init(data->extra_options);
 da_init(data->ranges);
 return p;
}
