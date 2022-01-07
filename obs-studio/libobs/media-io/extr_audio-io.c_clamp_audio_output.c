
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio_output {size_t planes; struct audio_mix* mixes; } ;
struct TYPE_2__ {int num; } ;
struct audio_mix {float** buffer; TYPE_1__ inputs; } ;


 size_t MAX_AUDIO_MIXES ;

__attribute__((used)) static inline void clamp_audio_output(struct audio_output *audio, size_t bytes)
{
 size_t float_size = bytes / sizeof(float);

 for (size_t mix_idx = 0; mix_idx < MAX_AUDIO_MIXES; mix_idx++) {
  struct audio_mix *mix = &audio->mixes[mix_idx];


  if (!mix->inputs.num)
   continue;

  for (size_t plane = 0; plane < audio->planes; plane++) {
   float *mix_data = mix->buffer[plane];
   float *mix_end = &mix_data[float_size];

   while (mix_data < mix_end) {
    float val = *mix_data;
    val = (val > 1.0f) ? 1.0f : val;
    val = (val < -1.0f) ? -1.0f : val;
    *(mix_data++) = val;
   }
  }
 }
}
