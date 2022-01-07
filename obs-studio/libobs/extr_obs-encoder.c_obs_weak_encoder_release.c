
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ obs_weak_encoder_t ;


 int bfree (TYPE_1__*) ;
 scalar_t__ obs_weak_ref_release (int *) ;

void obs_weak_encoder_release(obs_weak_encoder_t *weak)
{
 if (!weak)
  return;

 if (obs_weak_ref_release(&weak->ref))
  bfree(weak);
}
