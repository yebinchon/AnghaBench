
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_data {scalar_t__ format; } ;
typedef int obs_property_t ;


 scalar_t__ OBS_COMBO_FORMAT_STRING ;
 size_t add_item (struct list_data*,char const*,char const*) ;
 struct list_data* get_list_data (int *) ;

size_t obs_property_list_add_string(obs_property_t *p, const char *name,
        const char *val)
{
 struct list_data *data = get_list_data(p);
 if (data && data->format == OBS_COMBO_FORMAT_STRING)
  return add_item(data, name, val);
 return 0;
}
