
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct list_data {TYPE_2__ items; } ;
typedef int obs_property_t ;
struct TYPE_3__ {double d; } ;


 int OBS_COMBO_FORMAT_FLOAT ;
 struct list_data* get_list_fmt_data (int *,int ) ;

double obs_property_list_item_float(obs_property_t *p, size_t idx)
{
 struct list_data *data = get_list_fmt_data(p, OBS_COMBO_FORMAT_FLOAT);
 return (data && idx < data->items.num) ? data->items.array[idx].d : 0.0;
}
