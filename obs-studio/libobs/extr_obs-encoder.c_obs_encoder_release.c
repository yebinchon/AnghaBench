
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ obs_weak_encoder_t ;
struct TYPE_7__ {TYPE_1__* control; } ;
typedef TYPE_2__ obs_encoder_t ;


 int obs_encoder_destroy (TYPE_2__*) ;
 scalar_t__ obs_ref_release (int *) ;
 int obs_weak_encoder_release (TYPE_1__*) ;

void obs_encoder_release(obs_encoder_t *encoder)
{
 if (!encoder)
  return;

 obs_weak_encoder_t *control = encoder->control;
 if (obs_ref_release(&control->ref)) {



  obs_encoder_destroy(encoder);
  obs_weak_encoder_release(control);
 }
}
