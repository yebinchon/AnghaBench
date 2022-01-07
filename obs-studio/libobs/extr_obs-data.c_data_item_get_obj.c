
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref; } ;
typedef TYPE_1__ obs_data_t ;
typedef int obs_data_item_t ;
typedef TYPE_1__* (* get_obj_t ) (int *) ;


 int OBS_DATA_OBJECT ;
 scalar_t__ item_valid (int *,int ) ;
 int os_atomic_inc_long (int *) ;

__attribute__((used)) static inline obs_data_t *data_item_get_obj(obs_data_item_t *item,
         get_obj_t get_obj)
{
 obs_data_t *obj = item_valid(item, OBS_DATA_OBJECT) ? get_obj(item)
           : ((void*)0);

 if (obj)
  os_atomic_inc_long(&obj->ref);
 return obj;
}
