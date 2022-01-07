
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct obs_output {int * audio_encoders; TYPE_1__ info; } ;


 size_t MAX_AUDIO_MIXES ;
 int OBS_OUTPUT_MULTI_TRACK ;
 int OBS_OUTPUT_SERVICE ;
 int service_supports_multitrack (struct obs_output const*) ;

__attribute__((used)) static inline size_t num_audio_mixes(const struct obs_output *output)
{
 size_t mix_count = 1;

 if ((output->info.flags & OBS_OUTPUT_SERVICE) != 0) {
  if (!service_supports_multitrack(output)) {
   return 1;
  }
 }

 if ((output->info.flags & OBS_OUTPUT_MULTI_TRACK) != 0) {
  mix_count = 0;

  for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
   if (!output->audio_encoders[i])
    break;

   mix_count++;
  }
 }

 return mix_count;
}
