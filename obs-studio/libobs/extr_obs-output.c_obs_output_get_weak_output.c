
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_weak_output_t ;
struct TYPE_3__ {int * control; } ;
typedef TYPE_1__ obs_output_t ;


 int obs_weak_output_addref (int *) ;

obs_weak_output_t *obs_output_get_weak_output(obs_output_t *output)
{
 if (!output)
  return ((void*)0);

 obs_weak_output_t *weak = output->control;
 obs_weak_output_addref(weak);
 return weak;
}
