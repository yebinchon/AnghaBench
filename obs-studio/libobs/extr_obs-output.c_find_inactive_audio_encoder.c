
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obs_encoder {int paired_encoder; int active; } ;
struct TYPE_3__ {struct obs_encoder** audio_encoders; } ;
typedef TYPE_1__ obs_output_t ;
typedef struct obs_encoder obs_encoder_t ;



__attribute__((used)) static inline obs_encoder_t *find_inactive_audio_encoder(obs_output_t *output,
        size_t num_mixes)
{
 for (size_t i = 0; i < num_mixes; i++) {
  struct obs_encoder *audio = output->audio_encoders[i];

  if (audio && !audio->active && !audio->paired_encoder)
   return audio;
 }

 return ((void*)0);
}
