
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_data {scalar_t__ format; } ;
typedef int obs_property_t ;


 scalar_t__ OBS_COMBO_FORMAT_FLOAT ;
 size_t add_item (struct list_data*,char const*,double*) ;
 struct list_data* get_list_data (int *) ;

size_t obs_property_list_add_float(obs_property_t *p, const char *name,
       double val)
{
 struct list_data *data = get_list_data(p);
 if (data && data->format == OBS_COMBO_FORMAT_FLOAT)
  return add_item(data, name, &val);
 return 0;
}
