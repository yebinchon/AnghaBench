
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int profiler_name_store_t ;
struct TYPE_2__ {int * name_store; } ;


 TYPE_1__* obs ;

profiler_name_store_t *obs_get_profiler_name_store(void)
{
 if (!obs)
  return ((void*)0);

 return obs->name_store;
}
