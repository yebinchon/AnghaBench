
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_data {int dummy; } ;
typedef int obs_property_t ;


 struct list_data* get_list_data (int *) ;
 int list_data_free (struct list_data*) ;

void obs_property_list_clear(obs_property_t *p)
{
 struct list_data *data = get_list_data(p);
 if (data)
  list_data_free(data);
}
