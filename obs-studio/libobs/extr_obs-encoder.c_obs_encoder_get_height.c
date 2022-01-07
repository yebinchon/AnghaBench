
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ scaled_height; int media; TYPE_1__ info; } ;
typedef TYPE_2__ obs_encoder_t ;


 int LOG_WARNING ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 int blog (int ,char*,int ) ;
 int obs_encoder_get_name (TYPE_2__ const*) ;
 int obs_encoder_valid (TYPE_2__ const*,char*) ;
 scalar_t__ video_output_get_height (int ) ;

uint32_t obs_encoder_get_height(const obs_encoder_t *encoder)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_get_height"))
  return 0;
 if (encoder->info.type != OBS_ENCODER_VIDEO) {
  blog(LOG_WARNING,
       "obs_encoder_get_height: "
       "encoder '%s' is not a video encoder",
       obs_encoder_get_name(encoder));
  return 0;
 }
 if (!encoder->media)
  return 0;

 return encoder->scaled_height != 0
         ? encoder->scaled_height
         : video_output_get_height(encoder->media);
}
