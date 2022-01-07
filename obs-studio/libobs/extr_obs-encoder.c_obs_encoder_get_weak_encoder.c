
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_weak_encoder_t ;
struct TYPE_3__ {int * control; } ;
typedef TYPE_1__ obs_encoder_t ;


 int obs_weak_encoder_addref (int *) ;

obs_weak_encoder_t *obs_encoder_get_weak_encoder(obs_encoder_t *encoder)
{
 if (!encoder)
  return ((void*)0);

 obs_weak_encoder_t *weak = encoder->control;
 obs_weak_encoder_addref(weak);
 return weak;
}
