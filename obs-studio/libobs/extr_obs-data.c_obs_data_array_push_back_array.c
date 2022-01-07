
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int obs_data_t ;
struct TYPE_7__ {size_t num; int ** array; } ;
struct TYPE_6__ {TYPE_4__ objects; } ;
typedef TYPE_1__ obs_data_array_t ;


 int da_push_back_da (TYPE_4__,TYPE_4__) ;
 int obs_data_addref (int *) ;

void obs_data_array_push_back_array(obs_data_array_t *array,
        obs_data_array_t *array2)
{
 if (!array || !array2)
  return;

 for (size_t i = 0; i < array2->objects.num; i++) {
  obs_data_t *obj = array2->objects.array[i];
  obs_data_addref(obj);
 }
 da_push_back_da(array->objects, array2->objects);
}
