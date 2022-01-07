
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ref; } ;
typedef TYPE_2__ obs_data_t ;
struct TYPE_6__ {size_t num; TYPE_2__** array; } ;
struct TYPE_8__ {TYPE_1__ objects; } ;
typedef TYPE_3__ obs_data_array_t ;


 int os_atomic_inc_long (int *) ;

obs_data_t *obs_data_array_item(obs_data_array_t *array, size_t idx)
{
 obs_data_t *data;

 if (!array)
  return ((void*)0);

 data = (idx < array->objects.num) ? array->objects.array[idx] : ((void*)0);

 if (data)
  os_atomic_inc_long(&data->ref);
 return data;
}
