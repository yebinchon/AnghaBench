
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * array; } ;
struct TYPE_4__ {TYPE_3__ objects; } ;
typedef TYPE_1__ obs_data_array_t ;


 int da_erase (TYPE_3__,size_t) ;
 int obs_data_release (int ) ;

void obs_data_array_erase(obs_data_array_t *array, size_t idx)
{
 if (array) {
  obs_data_release(array->objects.array[idx]);
  da_erase(array->objects, idx);
 }
}
