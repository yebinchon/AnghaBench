
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int flags; } ;
struct TYPE_14__ {TYPE_4__** audio_encoders; TYPE_2__ info; } ;
typedef TYPE_3__ obs_output_t ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_15__ {TYPE_1__ info; } ;
typedef TYPE_4__ obs_encoder_t ;


 int LOG_WARNING ;
 size_t MAX_AUDIO_MIXES ;
 scalar_t__ OBS_ENCODER_AUDIO ;
 int OBS_OUTPUT_MULTI_TRACK ;
 int blog (int ,char*) ;
 int obs_encoder_add_output (TYPE_4__*,TYPE_3__*) ;
 int obs_encoder_remove_output (TYPE_4__*,TYPE_3__*) ;
 int obs_output_valid (TYPE_3__*,char*) ;

void obs_output_set_audio_encoder(obs_output_t *output, obs_encoder_t *encoder,
      size_t idx)
{
 if (!obs_output_valid(output, "obs_output_set_audio_encoder"))
  return;
 if (encoder && encoder->info.type != OBS_ENCODER_AUDIO) {
  blog(LOG_WARNING, "obs_output_set_audio_encoder: "
      "encoder passed is not an audio encoder");
  return;
 }

 if ((output->info.flags & OBS_OUTPUT_MULTI_TRACK) != 0) {
  if (idx >= MAX_AUDIO_MIXES) {
   return;
  }
 } else {
  if (idx > 0) {
   return;
  }
 }

 if (output->audio_encoders[idx] == encoder)
  return;

 obs_encoder_remove_output(output->audio_encoders[idx], output);
 obs_encoder_add_output(encoder, output);
 output->audio_encoders[idx] = encoder;
}
