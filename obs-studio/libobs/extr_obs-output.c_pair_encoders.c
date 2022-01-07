
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_encoder {int wait_for_video; int init_mutex; struct obs_encoder* paired_encoder; int active; } ;
struct TYPE_4__ {struct obs_encoder* video_encoder; } ;
typedef TYPE_1__ obs_output_t ;


 struct obs_encoder* find_inactive_audio_encoder (TYPE_1__*,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void pair_encoders(obs_output_t *output, size_t num_mixes)
{
 struct obs_encoder *video = output->video_encoder;
 struct obs_encoder *audio =
  find_inactive_audio_encoder(output, num_mixes);

 if (video && audio) {
  pthread_mutex_lock(&audio->init_mutex);
  pthread_mutex_lock(&video->init_mutex);

  if (!audio->active && !video->active &&
      !video->paired_encoder && !audio->paired_encoder) {

   audio->wait_for_video = 1;
   audio->paired_encoder = video;
   video->paired_encoder = audio;
  }

  pthread_mutex_unlock(&video->init_mutex);
  pthread_mutex_unlock(&audio->init_mutex);
 }
}
