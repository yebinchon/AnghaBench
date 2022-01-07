
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; } ;
struct TYPE_5__ {TYPE_1__ objects; } ;
typedef TYPE_2__ obs_data_array_t ;



size_t obs_data_array_count(obs_data_array_t *array)
{
 return array ? array->objects.num : 0;
}
