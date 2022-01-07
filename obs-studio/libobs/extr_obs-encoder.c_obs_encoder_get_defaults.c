
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info; } ;
typedef TYPE_1__ obs_encoder_t ;
typedef int obs_data_t ;


 int * get_defaults (int *) ;
 int obs_encoder_valid (TYPE_1__ const*,char*) ;

obs_data_t *obs_encoder_get_defaults(const obs_encoder_t *encoder)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_defaults"))
  return ((void*)0);

 return get_defaults(&encoder->info);
}
