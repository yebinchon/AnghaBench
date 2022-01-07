
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct audio_output {size_t planes; int input_mutex; struct audio_mix* mixes; } ;
struct TYPE_2__ {size_t num; struct audio_input* array; } ;
struct audio_mix {scalar_t__* buffer; TYPE_1__ inputs; } ;
struct audio_input {int param; int (* callback ) (int ,size_t,struct audio_data*) ;} ;
struct audio_data {int timestamp; int frames; int ** data; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ resample_audio_output (struct audio_input*,struct audio_data*) ;
 int stub1 (int ,size_t,struct audio_data*) ;

__attribute__((used)) static inline void do_audio_output(struct audio_output *audio, size_t mix_idx,
       uint64_t timestamp, uint32_t frames)
{
 struct audio_mix *mix = &audio->mixes[mix_idx];
 struct audio_data data;

 pthread_mutex_lock(&audio->input_mutex);

 for (size_t i = mix->inputs.num; i > 0; i--) {
  struct audio_input *input = mix->inputs.array + (i - 1);

  for (size_t i = 0; i < audio->planes; i++)
   data.data[i] = (uint8_t *)mix->buffer[i];
  data.frames = frames;
  data.timestamp = timestamp;

  if (resample_audio_output(input, &data))
   input->callback(input->param, mix_idx, &data);
 }

 pthread_mutex_unlock(&audio->input_mutex);
}
