
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct noise_suppress_data {int suppress_level; size_t frames; size_t channels; void** segment_buffers; void** copy_buffers; scalar_t__* states; } ;
typedef int spx_int16_t ;
typedef int obs_data_t ;


 int S_SUPPRESS_LEVEL ;
 int alloc_channel (struct noise_suppress_data*,scalar_t__,size_t,size_t) ;
 size_t audio_output_get_channels (int ) ;
 scalar_t__ audio_output_get_sample_rate (int ) ;
 void* bmalloc (size_t) ;
 scalar_t__ obs_data_get_int (int *,int ) ;
 int obs_get_audio () ;

__attribute__((used)) static void noise_suppress_update(void *data, obs_data_t *s)
{
 struct noise_suppress_data *ng = data;

 uint32_t sample_rate = audio_output_get_sample_rate(obs_get_audio());
 size_t channels = audio_output_get_channels(obs_get_audio());
 size_t frames = (size_t)sample_rate / 100;

 ng->suppress_level = (int)obs_data_get_int(s, S_SUPPRESS_LEVEL);


 ng->frames = frames;
 ng->channels = channels;


 if (ng->states[0])
  return;


 ng->copy_buffers[0] = bmalloc(frames * channels * sizeof(float));
 ng->segment_buffers[0] =
  bmalloc(frames * channels * sizeof(spx_int16_t));
 for (size_t c = 1; c < channels; ++c) {
  ng->copy_buffers[c] = ng->copy_buffers[c - 1] + frames;
  ng->segment_buffers[c] = ng->segment_buffers[c - 1] + frames;
 }

 for (size_t i = 0; i < channels; i++)
  alloc_channel(ng, sample_rate, i, frames);
}
