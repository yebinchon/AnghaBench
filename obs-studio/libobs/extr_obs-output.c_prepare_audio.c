
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ last_video_ts; int mutex; } ;
struct obs_output {scalar_t__ video_start_ts; size_t planes; int audio_size; scalar_t__ sample_rate; TYPE_1__ pause; } ;
struct audio_data {scalar_t__ timestamp; int* data; scalar_t__ frames; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool prepare_audio(struct obs_output *output,
     const struct audio_data *old, struct audio_data *new)
{
 if (!output->video_start_ts) {
  pthread_mutex_lock(&output->pause.mutex);
  output->video_start_ts = output->pause.last_video_ts;
  pthread_mutex_unlock(&output->pause.mutex);
 }

 if (!output->video_start_ts)
  return 0;



 *new = *old;

 if (old->timestamp < output->video_start_ts) {
  uint64_t duration = (uint64_t)old->frames * 1000000000 /
        (uint64_t)output->sample_rate;
  uint64_t end_ts = (old->timestamp + duration);
  uint64_t cutoff;

  if (end_ts <= output->video_start_ts)
   return 0;

  cutoff = output->video_start_ts - old->timestamp;
  new->timestamp += cutoff;

  cutoff = cutoff * (uint64_t)output->sample_rate / 1000000000;

  for (size_t i = 0; i < output->planes; i++)
   new->data[i] += output->audio_size *(uint32_t)cutoff;
  new->frames -= (uint32_t)cutoff;
 }

 return 1;
}
