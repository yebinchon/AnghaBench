
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct list_data {TYPE_1__ items; } ;
typedef int obs_property_t ;


 int da_erase (TYPE_1__,size_t) ;
 struct list_data* get_list_data (int *) ;
 int list_item_free (struct list_data*,scalar_t__) ;

void obs_property_list_item_remove(obs_property_t *p, size_t idx)
{
 struct list_data *data = get_list_data(p);
 if (data && idx < data->items.num) {
  list_item_free(data, data->items.array + idx);
  da_erase(data->items, idx);
 }
}
