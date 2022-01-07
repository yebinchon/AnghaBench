
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * settings; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_encoder_t ;
typedef int obs_data_t ;


 int obs_data_addref (int *) ;
 int obs_encoder_valid (TYPE_2__ const*,char*) ;

obs_data_t *obs_encoder_get_settings(const obs_encoder_t *encoder)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_get_settings"))
  return ((void*)0);

 obs_data_addref(encoder->context.settings);
 return encoder->context.settings;
}
