
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; } ;
struct list_data {TYPE_1__ items; } ;
typedef int obs_property_t ;


 struct list_data* get_list_data (int *) ;

size_t obs_property_list_item_count(obs_property_t *p)
{
 struct list_data *data = get_list_data(p);
 return data ? data->items.num : 0;
}
