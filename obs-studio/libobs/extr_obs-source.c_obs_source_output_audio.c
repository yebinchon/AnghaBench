
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct obs_source_audio {int dummy; } ;
struct obs_audio_data {int timestamp; int frames; int * data; } ;
struct audio_data {int timestamp; int frames; int * data; } ;
struct TYPE_7__ {int filter_mutex; int audio_mutex; int audio_data; } ;
typedef TYPE_1__ obs_source_t ;


 int MAX_AV_PLANES ;
 struct obs_audio_data* filter_async_audio (TYPE_1__*,int *) ;
 int obs_ptr_valid (struct obs_source_audio const*,char*) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int process_audio (TYPE_1__*,struct obs_source_audio const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int source_output_audio_data (TYPE_1__*,struct audio_data*) ;

void obs_source_output_audio(obs_source_t *source,
        const struct obs_source_audio *audio)
{
 struct obs_audio_data *output;

 if (!obs_source_valid(source, "obs_source_output_audio"))
  return;
 if (!obs_ptr_valid(audio, "obs_source_output_audio"))
  return;

 process_audio(source, audio);

 pthread_mutex_lock(&source->filter_mutex);
 output = filter_async_audio(source, &source->audio_data);

 if (output) {
  struct audio_data data;

  for (int i = 0; i < MAX_AV_PLANES; i++)
   data.data[i] = output->data[i];

  data.frames = output->frames;
  data.timestamp = output->timestamp;

  pthread_mutex_lock(&source->audio_mutex);
  source_output_audio_data(source, &data);
  pthread_mutex_unlock(&source->audio_mutex);
 }

 pthread_mutex_unlock(&source->filter_mutex);
}
