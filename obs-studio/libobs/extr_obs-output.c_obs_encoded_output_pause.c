
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_8__ {TYPE_2__** audio_encoders; TYPE_2__* video_encoder; } ;
typedef TYPE_1__ obs_output_t ;
struct TYPE_10__ {int mutex; void* ts_start; } ;
struct TYPE_9__ {TYPE_3__ pause; int paused; } ;
typedef TYPE_2__ obs_encoder_t ;


 int MAX_AUDIO_MIXES ;
 int end_pause (TYPE_3__*,void*) ;
 void* get_closest_v_ts (TYPE_3__*) ;
 int os_atomic_set_bool (int *,int) ;
 int pause_can_start (TYPE_3__*) ;
 int pause_can_stop (TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool obs_encoded_output_pause(obs_output_t *output, bool pause)
{
 obs_encoder_t *venc;
 obs_encoder_t *aenc[MAX_AUDIO_MIXES];
 uint64_t closest_v_ts;
 bool success = 0;

 venc = output->video_encoder;
 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++)
  aenc[i] = output->audio_encoders[i];

 pthread_mutex_lock(&venc->pause.mutex);
 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
  if (aenc[i]) {
   pthread_mutex_lock(&aenc[i]->pause.mutex);
  }
 }



 closest_v_ts = get_closest_v_ts(&venc->pause);

 if (pause) {
  if (!pause_can_start(&venc->pause)) {
   goto fail;
  }
  for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
   if (aenc[i] && !pause_can_start(&aenc[i]->pause)) {
    goto fail;
   }
  }

  os_atomic_set_bool(&venc->paused, 1);
  venc->pause.ts_start = closest_v_ts;

  for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
   if (aenc[i]) {
    os_atomic_set_bool(&aenc[i]->paused, 1);
    aenc[i]->pause.ts_start = closest_v_ts;
   }
  }
 } else {
  if (!pause_can_stop(&venc->pause)) {
   goto fail;
  }
  for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
   if (aenc[i] && !pause_can_stop(&aenc[i]->pause)) {
    goto fail;
   }
  }

  os_atomic_set_bool(&venc->paused, 0);
  end_pause(&venc->pause, closest_v_ts);

  for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
   if (aenc[i]) {
    os_atomic_set_bool(&aenc[i]->paused, 0);
    end_pause(&aenc[i]->pause, closest_v_ts);
   }
  }
 }



 success = 1;

fail:
 for (size_t i = MAX_AUDIO_MIXES; i > 0; i--) {
  if (aenc[i - 1]) {
   pthread_mutex_unlock(&aenc[i - 1]->pause.mutex);
  }
 }
 pthread_mutex_unlock(&venc->pause.mutex);

 return success;
}
