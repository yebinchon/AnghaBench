
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int control; } ;
typedef TYPE_1__ obs_encoder_t ;


 TYPE_1__* obs_weak_encoder_get_encoder (int ) ;

obs_encoder_t *obs_encoder_get_ref(obs_encoder_t *encoder)
{
 if (!encoder)
  return ((void*)0);

 return obs_weak_encoder_get_encoder(encoder->control);
}
