
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int obs_data_item_t ;
struct TYPE_5__ {int ref; } ;
typedef TYPE_1__ obs_data_array_t ;
typedef TYPE_1__* (* get_array_t ) (int *) ;


 int OBS_DATA_ARRAY ;
 scalar_t__ item_valid (int *,int ) ;
 int os_atomic_inc_long (int *) ;

__attribute__((used)) static inline obs_data_array_t *data_item_get_array(obs_data_item_t *item,
          get_array_t get_array)
{
 obs_data_array_t *array =
  item_valid(item, OBS_DATA_ARRAY) ? get_array(item) : ((void*)0);

 if (array)
  os_atomic_inc_long(&array->ref);
 return array;
}
