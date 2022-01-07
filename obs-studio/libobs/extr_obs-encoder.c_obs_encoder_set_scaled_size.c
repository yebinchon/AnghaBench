
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {void* scaled_height; void* scaled_width; TYPE_1__ info; } ;
typedef TYPE_2__ obs_encoder_t ;


 int LOG_WARNING ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 int blog (int ,char*,int ) ;
 scalar_t__ encoder_active (TYPE_2__*) ;
 int obs_encoder_get_name (TYPE_2__*) ;
 int obs_encoder_valid (TYPE_2__*,char*) ;

void obs_encoder_set_scaled_size(obs_encoder_t *encoder, uint32_t width,
     uint32_t height)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_set_scaled_size"))
  return;
 if (encoder->info.type != OBS_ENCODER_VIDEO) {
  blog(LOG_WARNING,
       "obs_encoder_set_scaled_size: "
       "encoder '%s' is not a video encoder",
       obs_encoder_get_name(encoder));
  return;
 }
 if (encoder_active(encoder)) {
  blog(LOG_WARNING,
       "encoder '%s': Cannot set the scaled "
       "resolution while the encoder is active",
       obs_encoder_get_name(encoder));
  return;
 }

 encoder->scaled_width = width;
 encoder->scaled_height = height;
}
