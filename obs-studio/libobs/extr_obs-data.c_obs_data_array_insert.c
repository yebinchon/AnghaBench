
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ obs_data_t ;
struct TYPE_7__ {int objects; } ;
typedef TYPE_2__ obs_data_array_t ;


 int da_insert (int ,size_t,TYPE_1__**) ;
 int os_atomic_inc_long (int *) ;

void obs_data_array_insert(obs_data_array_t *array, size_t idx, obs_data_t *obj)
{
 if (!array || !obj)
  return;

 os_atomic_inc_long(&obj->ref);
 da_insert(array->objects, idx, &obj);
}
