
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ obs_data_array_t ;


 int obs_data_array_destroy (TYPE_1__*) ;
 scalar_t__ os_atomic_dec_long (int *) ;

void obs_data_array_release(obs_data_array_t *array)
{
 if (!array)
  return;

 if (os_atomic_dec_long(&array->ref) == 0)
  obs_data_array_destroy(array);
}
