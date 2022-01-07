
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct audio_monitor {int channels; scalar_t__ wait_size; int paused; int mutex; int queue; TYPE_1__ empty_buffers; TYPE_4__ new_data; int resampler; int active; } ;
struct audio_data {scalar_t__ frames; scalar_t__ data; } ;
struct TYPE_7__ {float user_volume; } ;
typedef TYPE_2__ obs_source_t ;


 int AudioQueueStart (int ,int *) ;
 int EPSILON ;
 int MAX_AV_PLANES ;
 int UNUSED_PARAMETER (TYPE_2__*) ;
 int audio_resampler_resample (int ,int **,int*,int *,int const* const*,int) ;
 int circlebuf_push_back (TYPE_4__*,int *,int) ;
 int close_float (float,float,int ) ;
 int fill_buffer (struct audio_monitor*) ;
 int memset (int *,int ,int) ;
 int os_atomic_load_bool (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void on_audio_playback(void *param, obs_source_t *source,
         const struct audio_data *audio_data, bool muted)
{
 struct audio_monitor *monitor = param;
 float vol = source->user_volume;
 uint32_t bytes;

 UNUSED_PARAMETER(source);

 if (!os_atomic_load_bool(&monitor->active)) {
  return;
 }

 uint8_t *resample_data[MAX_AV_PLANES];
 uint32_t resample_frames;
 uint64_t ts_offset;
 bool success;

 success = audio_resampler_resample(
  monitor->resampler, resample_data, &resample_frames, &ts_offset,
  (const uint8_t *const *)audio_data->data,
  (uint32_t)audio_data->frames);
 if (!success) {
  return;
 }

 bytes = sizeof(float) * monitor->channels * resample_frames;

 if (muted) {
  memset(resample_data[0], 0, bytes);
 } else {

  if (!close_float(vol, 1.0f, EPSILON)) {
   register float *cur = (float *)resample_data[0];
   register float *end =
    cur + resample_frames * monitor->channels;

   while (cur < end)
    *(cur++) *= vol;
  }
 }

 pthread_mutex_lock(&monitor->mutex);
 circlebuf_push_back(&monitor->new_data, resample_data[0], bytes);

 if (monitor->new_data.size >= monitor->wait_size) {
  monitor->wait_size = 0;

  while (monitor->empty_buffers.size > 0) {
   if (!fill_buffer(monitor)) {
    break;
   }
  }

  if (monitor->paused) {
   AudioQueueStart(monitor->queue, ((void*)0));
   monitor->paused = 0;
  }
 }

 pthread_mutex_unlock(&monitor->mutex);
}
