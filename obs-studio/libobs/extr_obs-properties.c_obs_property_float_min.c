
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct float_data {double min; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_FLOAT ;
 struct float_data* get_type_data (int *,int ) ;

double obs_property_float_min(obs_property_t *p)
{
 struct float_data *data = get_type_data(p, OBS_PROPERTY_FLOAT);
 return data ? data->min : 0;
}
