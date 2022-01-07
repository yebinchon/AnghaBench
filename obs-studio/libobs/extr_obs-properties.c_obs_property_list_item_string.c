
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct list_data {TYPE_2__ items; } ;
typedef int obs_property_t ;
struct TYPE_3__ {char const* str; } ;


 int OBS_COMBO_FORMAT_STRING ;
 struct list_data* get_list_fmt_data (int *,int ) ;

const char *obs_property_list_item_string(obs_property_t *p, size_t idx)
{
 struct list_data *data = get_list_fmt_data(p, OBS_COMBO_FORMAT_STRING);
 return (data && idx < data->items.num) ? data->items.array[idx].str
            : ((void*)0);
}
