
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


 size_t da_push_back (int ,TYPE_1__**) ;
 int os_atomic_inc_long (int *) ;

size_t obs_data_array_push_back(obs_data_array_t *array, obs_data_t *obj)
{
 if (!array || !obj)
  return 0;

 os_atomic_inc_long(&obj->ref);
 return da_push_back(array->objects, &obj);
}
