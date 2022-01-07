
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef TYPE_1__ obs_encoder_t ;
typedef int obs_data_t ;


 int lock () ;
 int * save_context_hotkeys (int *) ;
 int unlock () ;

obs_data_t *obs_hotkeys_save_encoder(obs_encoder_t *encoder)
{
 obs_data_t *result = ((void*)0);

 if (!lock())
  return result;

 result = save_context_hotkeys(&encoder->context);
 unlock();

 return result;
}
