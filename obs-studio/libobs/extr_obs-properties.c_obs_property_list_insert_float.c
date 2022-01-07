
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_data {scalar_t__ format; } ;
typedef int obs_property_t ;


 scalar_t__ OBS_COMBO_FORMAT_FLOAT ;
 struct list_data* get_list_data (int *) ;
 int insert_item (struct list_data*,size_t,char const*,double*) ;

void obs_property_list_insert_float(obs_property_t *p, size_t idx,
        const char *name, double val)
{
 struct list_data *data = get_list_data(p);
 if (data && data->format == OBS_COMBO_FORMAT_FLOAT)
  insert_item(data, idx, name, &val);
}
