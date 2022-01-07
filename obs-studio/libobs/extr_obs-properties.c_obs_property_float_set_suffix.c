
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct float_data {int suffix; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_FLOAT ;
 int bfree (int ) ;
 int bstrdup (char const*) ;
 struct float_data* get_type_data (int *,int ) ;

void obs_property_float_set_suffix(obs_property_t *p, const char *suffix)
{
 struct float_data *data = get_type_data(p, OBS_PROPERTY_FLOAT);
 if (!data)
  return;

 bfree(data->suffix);
 data->suffix = bstrdup(suffix);
}
