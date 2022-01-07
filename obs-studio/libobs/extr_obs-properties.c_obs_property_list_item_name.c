
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct list_data {TYPE_2__ items; } ;
typedef int obs_property_t ;
struct TYPE_3__ {char const* name; } ;


 struct list_data* get_list_data (int *) ;

const char *obs_property_list_item_name(obs_property_t *p, size_t idx)
{
 struct list_data *data = get_list_data(p);
 return (data && idx < data->items.num) ? data->items.array[idx].name
            : ((void*)0);
}
