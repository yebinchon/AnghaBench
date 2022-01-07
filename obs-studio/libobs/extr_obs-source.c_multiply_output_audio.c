
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float*** audio_output_buf; } ;
typedef TYPE_1__ obs_source_t ;


 size_t AUDIO_OUTPUT_FRAMES ;

__attribute__((used)) static inline void multiply_output_audio(obs_source_t *source, size_t mix,
      size_t channels, float vol)
{
 register float *out = source->audio_output_buf[mix][0];
 register float *end = out + AUDIO_OUTPUT_FRAMES * channels;

 while (out < end)
  *(out++) *= vol;
}
