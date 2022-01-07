
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {int * media; TYPE_1__ info; } ;
typedef TYPE_2__ obs_encoder_t ;
typedef int audio_t ;


 int LOG_WARNING ;
 scalar_t__ OBS_ENCODER_AUDIO ;
 int blog (int ,char*,int ) ;
 int obs_encoder_get_name (TYPE_2__ const*) ;
 int obs_encoder_valid (TYPE_2__ const*,char*) ;

audio_t *obs_encoder_audio(const obs_encoder_t *encoder)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_audio"))
  return ((void*)0);
 if (encoder->info.type != OBS_ENCODER_AUDIO) {
  blog(LOG_WARNING,
       "obs_encoder_set_audio: "
       "encoder '%s' is not an audio encoder",
       obs_encoder_get_name(encoder));
  return ((void*)0);
 }

 return encoder->media;
}
