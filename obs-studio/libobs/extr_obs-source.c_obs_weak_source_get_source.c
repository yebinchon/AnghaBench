
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * source; int ref; } ;
typedef TYPE_1__ obs_weak_source_t ;
typedef int obs_source_t ;


 scalar_t__ obs_weak_ref_get_ref (int *) ;

obs_source_t *obs_weak_source_get_source(obs_weak_source_t *weak)
{
 if (!weak)
  return ((void*)0);

 if (obs_weak_ref_get_ref(&weak->ref))
  return weak->source;

 return ((void*)0);
}
