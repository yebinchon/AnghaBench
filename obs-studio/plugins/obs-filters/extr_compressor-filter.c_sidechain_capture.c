
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct compressor_data {int max_sidechain_frames; size_t num_channels; int sidechain_mutex; TYPE_1__* sidechain_data; } ;
struct audio_data {int frames; int * data; } ;
typedef int obs_source_t ;
struct TYPE_4__ {size_t size; } ;


 int UNUSED_PARAMETER (int *) ;
 int circlebuf_pop_front (TYPE_1__*,int *,size_t) ;
 int circlebuf_push_back (TYPE_1__*,int ,int) ;
 int circlebuf_push_back_zero (TYPE_1__*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void sidechain_capture(void *param, obs_source_t *source,
         const struct audio_data *audio_data, bool muted)
{
 struct compressor_data *cd = param;

 UNUSED_PARAMETER(source);

 pthread_mutex_lock(&cd->sidechain_mutex);

 if (cd->max_sidechain_frames < audio_data->frames)
  cd->max_sidechain_frames = audio_data->frames;

 size_t expected_size = cd->max_sidechain_frames * sizeof(float);

 if (!expected_size)
  goto unlock;

 if (cd->sidechain_data[0].size > expected_size * 2) {
  for (size_t i = 0; i < cd->num_channels; i++) {
   circlebuf_pop_front(&cd->sidechain_data[i], ((void*)0),
         expected_size);
  }
 }

 if (muted) {
  for (size_t i = 0; i < cd->num_channels; i++) {
   circlebuf_push_back_zero(&cd->sidechain_data[i],
       audio_data->frames *
        sizeof(float));
  }
 } else {
  for (size_t i = 0; i < cd->num_channels; i++) {
   circlebuf_push_back(&cd->sidechain_data[i],
         audio_data->data[i],
         audio_data->frames * sizeof(float));
  }
 }

unlock:
 pthread_mutex_unlock(&cd->sidechain_mutex);
}
