
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int control; } ;
typedef TYPE_1__ obs_source_t ;


 TYPE_1__* obs_weak_source_get_source (int ) ;

obs_source_t *obs_source_get_ref(obs_source_t *source)
{
 if (!source)
  return ((void*)0);

 return obs_weak_source_get_source(source->control);
}
