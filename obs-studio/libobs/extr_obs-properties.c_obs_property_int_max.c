
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_data {int max; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_INT ;
 struct int_data* get_type_data (int *,int ) ;

int obs_property_int_max(obs_property_t *p)
{
 struct int_data *data = get_type_data(p, OBS_PROPERTY_INT);
 return data ? data->max : 0;
}
