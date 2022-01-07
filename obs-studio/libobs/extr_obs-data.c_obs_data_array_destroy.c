
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num; int * array; } ;
struct TYPE_5__ {TYPE_3__ objects; } ;
typedef TYPE_1__ obs_data_array_t ;


 int bfree (TYPE_1__*) ;
 int da_free (TYPE_3__) ;
 int obs_data_release (int ) ;

__attribute__((used)) static inline void obs_data_array_destroy(obs_data_array_t *array)
{
 if (array) {
  for (size_t i = 0; i < array->objects.num; i++)
   obs_data_release(array->objects.array[i]);
  da_free(array->objects);
  bfree(array);
 }
}
