
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int (* apply_encoder_settings ) (int ,int *,int *) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_service_t ;
typedef int obs_data_t ;


 int obs_service_valid (TYPE_3__*,char*) ;
 int stub1 (int ,int *,int *) ;

void obs_service_apply_encoder_settings(obs_service_t *service,
     obs_data_t *video_encoder_settings,
     obs_data_t *audio_encoder_settings)
{
 if (!obs_service_valid(service, "obs_service_apply_encoder_settings"))
  return;
 if (!service->info.apply_encoder_settings)
  return;

 if (video_encoder_settings || audio_encoder_settings)
  service->info.apply_encoder_settings(service->context.data,
           video_encoder_settings,
           audio_encoder_settings);
}
