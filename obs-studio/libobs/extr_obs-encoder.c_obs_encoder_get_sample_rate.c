
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ samplerate; int media; TYPE_1__ info; } ;
typedef TYPE_2__ obs_encoder_t ;


 int LOG_WARNING ;
 scalar_t__ OBS_ENCODER_AUDIO ;
 scalar_t__ audio_output_get_sample_rate (int ) ;
 int blog (int ,char*,int ) ;
 int obs_encoder_get_name (TYPE_2__ const*) ;
 int obs_encoder_valid (TYPE_2__ const*,char*) ;

uint32_t obs_encoder_get_sample_rate(const obs_encoder_t *encoder)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_get_sample_rate"))
  return 0;
 if (encoder->info.type != OBS_ENCODER_AUDIO) {
  blog(LOG_WARNING,
       "obs_encoder_get_sample_rate: "
       "encoder '%s' is not an audio encoder",
       obs_encoder_get_name(encoder));
  return 0;
 }
 if (!encoder->media)
  return 0;

 return encoder->samplerate != 0
         ? encoder->samplerate
         : audio_output_get_sample_rate(encoder->media);
}
