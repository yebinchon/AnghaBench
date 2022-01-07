
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {scalar_t__ data; } ;
struct obs_source {TYPE_2__ audio_data; } ;
struct TYPE_4__ {int audio; } ;
struct TYPE_6__ {TYPE_1__ audio; } ;


 size_t audio_output_get_channels (int ) ;
 TYPE_3__* obs ;

__attribute__((used)) static void downmix_to_mono_planar(struct obs_source *source, uint32_t frames)
{
 size_t channels = audio_output_get_channels(obs->audio.audio);
 const float channels_i = 1.0f / (float)channels;
 float **data = (float **)source->audio_data.data;

 for (size_t channel = 1; channel < channels; channel++) {
  for (uint32_t frame = 0; frame < frames; frame++)
   data[0][frame] += data[channel][frame];
 }

 for (uint32_t frame = 0; frame < frames; frame++)
  data[0][frame] *= channels_i;

 for (size_t channel = 1; channel < channels; channel++) {
  for (uint32_t frame = 0; frame < frames; frame++)
   data[channel][frame] = data[0][frame];
 }
}
