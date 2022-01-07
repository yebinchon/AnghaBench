
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_common {scalar_t__* service; } ;
typedef int obs_data_t ;
typedef int json_t ;


 int LOG_WARNING ;
 int apply_audio_encoder_settings (int *,int *) ;
 int apply_video_encoder_settings (int *,int *) ;
 int blog (int ,char*,scalar_t__*) ;
 int * find_service (int *,scalar_t__*,int *) ;
 int * json_object_get (int *,char*) ;

__attribute__((used)) static void initialize_output(struct rtmp_common *service, json_t *root,
         obs_data_t *video_settings,
         obs_data_t *audio_settings)
{
 json_t *json_service = find_service(root, service->service, ((void*)0));
 json_t *recommended;

 if (!json_service) {
  if (service->service && *service->service)
   blog(LOG_WARNING,
        "rtmp-common.c: [initialize_output] "
        "Could not find service '%s'",
        service->service);
  return;
 }

 recommended = json_object_get(json_service, "recommended");
 if (!recommended)
  return;

 if (video_settings)
  apply_video_encoder_settings(video_settings, recommended);
 if (audio_settings)
  apply_audio_encoder_settings(audio_settings, recommended);
}
