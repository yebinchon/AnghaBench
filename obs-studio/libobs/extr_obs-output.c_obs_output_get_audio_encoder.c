
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {int ** audio_encoders; TYPE_1__ info; } ;
typedef TYPE_2__ obs_output_t ;
typedef int obs_encoder_t ;


 size_t MAX_AUDIO_MIXES ;
 int OBS_OUTPUT_MULTI_TRACK ;
 int obs_output_valid (TYPE_2__ const*,char*) ;

obs_encoder_t *obs_output_get_audio_encoder(const obs_output_t *output,
         size_t idx)
{
 if (!obs_output_valid(output, "obs_output_get_audio_encoder"))
  return ((void*)0);

 if ((output->info.flags & OBS_OUTPUT_MULTI_TRACK) != 0) {
  if (idx >= MAX_AUDIO_MIXES) {
   return ((void*)0);
  }
 } else {
  if (idx > 0) {
   return ((void*)0);
  }
 }

 return output->audio_encoders[idx];
}
