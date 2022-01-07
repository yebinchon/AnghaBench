
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_data {int min; int max; int step; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_INT ;
 struct int_data* get_type_data (int *,int ) ;

void obs_property_int_set_limits(obs_property_t *p, int min, int max, int step)
{
 struct int_data *data = get_type_data(p, OBS_PROPERTY_INT);
 if (!data)
  return;

 data->min = min;
 data->max = max;
 data->step = step;
}
