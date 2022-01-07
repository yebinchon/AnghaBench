
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct float_data {int type; } ;
typedef int obs_property_t ;
typedef enum obs_number_type { ____Placeholder_obs_number_type } obs_number_type ;


 int OBS_NUMBER_SCROLLER ;
 int OBS_PROPERTY_FLOAT ;
 struct float_data* get_type_data (int *,int ) ;

enum obs_number_type obs_property_float_type(obs_property_t *p)
{
 struct float_data *data = get_type_data(p, OBS_PROPERTY_FLOAT);
 return data ? data->type : OBS_NUMBER_SCROLLER;
}
