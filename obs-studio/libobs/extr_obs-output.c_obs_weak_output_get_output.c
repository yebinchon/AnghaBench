
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * output; int ref; } ;
typedef TYPE_1__ obs_weak_output_t ;
typedef int obs_output_t ;


 scalar_t__ obs_weak_ref_get_ref (int *) ;

obs_output_t *obs_weak_output_get_output(obs_weak_output_t *weak)
{
 if (!weak)
  return ((void*)0);

 if (obs_weak_ref_get_ref(&weak->ref))
  return weak->output;

 return ((void*)0);
}
