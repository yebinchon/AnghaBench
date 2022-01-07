
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int dummy; } ;
struct float_data {double min; double max; double step; int type; } ;
typedef struct obs_property obs_property_t ;
typedef int obs_properties_t ;
typedef enum obs_number_type { ____Placeholder_obs_number_type } obs_number_type ;


 int OBS_PROPERTY_FLOAT ;
 struct float_data* get_property_data (struct obs_property*) ;
 scalar_t__ has_prop (int *,char const*) ;
 struct obs_property* new_prop (int *,char const*,char const*,int ) ;

__attribute__((used)) static obs_property_t *add_flt(obs_properties_t *props, const char *name,
          const char *desc, double min, double max,
          double step, enum obs_number_type type)
{
 if (!props || has_prop(props, name))
  return ((void*)0);

 struct obs_property *p =
  new_prop(props, name, desc, OBS_PROPERTY_FLOAT);
 struct float_data *data = get_property_data(p);
 data->min = min;
 data->max = max;
 data->step = step;
 data->type = type;
 return p;
}
