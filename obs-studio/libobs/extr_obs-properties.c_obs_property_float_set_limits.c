
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct float_data {double min; double max; double step; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_FLOAT ;
 struct float_data* get_type_data (int *,int ) ;

void obs_property_float_set_limits(obs_property_t *p, double min, double max,
       double step)
{
 struct float_data *data = get_type_data(p, OBS_PROPERTY_FLOAT);
 if (!data)
  return;

 data->min = min;
 data->max = max;
 data->step = step;
}
