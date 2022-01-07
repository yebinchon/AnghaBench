
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ obs_weak_output_t ;
struct TYPE_7__ {TYPE_1__* control; } ;
typedef TYPE_2__ obs_output_t ;


 int obs_output_destroy (TYPE_2__*) ;
 scalar_t__ obs_ref_release (int *) ;
 int obs_weak_output_release (TYPE_1__*) ;

void obs_output_release(obs_output_t *output)
{
 if (!output)
  return;

 obs_weak_output_t *control = output->control;
 if (obs_ref_release(&control->ref)) {



  obs_output_destroy(output);
  obs_weak_output_release(control);
 }
}
