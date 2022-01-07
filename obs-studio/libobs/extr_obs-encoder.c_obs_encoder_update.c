
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int settings; scalar_t__ data; } ;
struct TYPE_6__ {int (* update ) (scalar_t__,int ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_encoder_t ;
typedef int obs_data_t ;


 int obs_data_apply (int ,int *) ;
 int obs_encoder_valid (TYPE_3__*,char*) ;
 int stub1 (scalar_t__,int ) ;

void obs_encoder_update(obs_encoder_t *encoder, obs_data_t *settings)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_update"))
  return;

 obs_data_apply(encoder->context.settings, settings);

 if (encoder->info.update && encoder->context.data)
  encoder->info.update(encoder->context.data,
         encoder->context.settings);
}
