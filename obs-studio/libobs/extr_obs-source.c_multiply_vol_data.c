
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float*** audio_output_buf; } ;
typedef TYPE_1__ obs_source_t ;


 int AUDIO_OUTPUT_FRAMES ;

__attribute__((used)) static inline void multiply_vol_data(obs_source_t *source, size_t mix,
         size_t channels, float *vol_data)
{
 for (size_t ch = 0; ch < channels; ch++) {
  register float *out = source->audio_output_buf[mix][ch];
  register float *end = out + AUDIO_OUTPUT_FRAMES;
  register float *vol = vol_data;

  while (out < end)
   *(out++) *= *(vol++);
 }
}
