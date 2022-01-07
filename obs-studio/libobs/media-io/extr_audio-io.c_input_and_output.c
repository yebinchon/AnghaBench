
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct audio_output_data {struct audio_output_data** data; } ;
struct audio_output {int block_size; size_t planes; int (* input_cb ) (int ,int ,int ,int *,int,struct audio_output_data*) ;int input_param; struct audio_mix* mixes; int input_mutex; } ;
struct TYPE_2__ {scalar_t__ num; } ;
struct audio_mix {struct audio_output_data** buffer; TYPE_1__ inputs; } ;
typedef int data ;


 int AUDIO_OUTPUT_FRAMES ;
 int LOG_DEBUG ;
 int MAX_AUDIO_CHANNELS ;
 int MAX_AUDIO_MIXES ;
 int blog (int ,char*,int ,int ,size_t) ;
 int clamp_audio_output (struct audio_output*,size_t) ;
 int do_audio_output (struct audio_output*,size_t,int ,int) ;
 int memset (struct audio_output_data*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,int ,int ,int *,int,struct audio_output_data*) ;

__attribute__((used)) static void input_and_output(struct audio_output *audio, uint64_t audio_time,
        uint64_t prev_time)
{
 size_t bytes = AUDIO_OUTPUT_FRAMES * audio->block_size;
 struct audio_output_data data[MAX_AUDIO_MIXES];
 uint32_t active_mixes = 0;
 uint64_t new_ts = 0;
 bool success;

 memset(data, 0, sizeof(data));







 pthread_mutex_lock(&audio->input_mutex);
 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
  if (audio->mixes[i].inputs.num)
   active_mixes |= (1 << i);
 }
 pthread_mutex_unlock(&audio->input_mutex);


 for (size_t mix_idx = 0; mix_idx < MAX_AUDIO_MIXES; mix_idx++) {
  struct audio_mix *mix = &audio->mixes[mix_idx];

  memset(mix->buffer[0], 0,
         AUDIO_OUTPUT_FRAMES * MAX_AUDIO_CHANNELS *
          sizeof(float));

  for (size_t i = 0; i < audio->planes; i++)
   data[mix_idx].data[i] = mix->buffer[i];
 }


 success = audio->input_cb(audio->input_param, prev_time, audio_time,
      &new_ts, active_mixes, data);
 if (!success)
  return;


 clamp_audio_output(audio, bytes);


 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++)
  do_audio_output(audio, i, new_ts, AUDIO_OUTPUT_FRAMES);
}
