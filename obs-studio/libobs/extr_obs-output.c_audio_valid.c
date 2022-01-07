
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int audio; int * audio_encoders; } ;


 size_t num_audio_mixes (struct obs_output const*) ;

__attribute__((used)) static inline bool audio_valid(const struct obs_output *output, bool encoded)
{
 if (encoded) {
  size_t mix_count = num_audio_mixes(output);
  if (!mix_count)
   return 0;

  for (size_t i = 0; i < mix_count; i++) {
   if (!output->audio_encoders[i]) {
    return 0;
   }
  }
 } else {
  if (!output->audio)
   return 0;
 }

 return 1;
}
