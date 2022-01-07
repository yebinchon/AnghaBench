
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_weak_source_t ;
struct TYPE_3__ {int * control; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_weak_source_addref (int *) ;

obs_weak_source_t *obs_source_get_weak_source(obs_source_t *source)
{
 if (!source)
  return ((void*)0);

 obs_weak_source_t *weak = source->control;
 obs_weak_source_addref(weak);
 return weak;
}
