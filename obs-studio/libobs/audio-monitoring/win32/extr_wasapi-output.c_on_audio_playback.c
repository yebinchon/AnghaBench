
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct audio_monitor {int channels; int playback_mutex; scalar_t__ source_has_video; TYPE_7__* client; int resampler; TYPE_4__* render; } ;
struct audio_data {scalar_t__ timestamp; scalar_t__ frames; scalar_t__ data; } ;
struct TYPE_11__ {float user_volume; scalar_t__ async_decoupled; scalar_t__ async_unbuffered; int activate_refs; } ;
typedef TYPE_3__ obs_source_t ;
typedef int UINT32 ;
struct TYPE_13__ {TYPE_1__* lpVtbl; } ;
struct TYPE_12__ {TYPE_2__* lpVtbl; } ;
struct TYPE_10__ {int (* ReleaseBuffer ) (TYPE_4__*,int,int ) ;int (* GetBuffer ) (TYPE_4__*,int,int **) ;} ;
struct TYPE_9__ {int (* GetCurrentPadding ) (TYPE_7__*,int *) ;} ;
typedef TYPE_4__ IAudioRenderClient ;
typedef int HRESULT ;
typedef int BYTE ;


 int AUDCLNT_BUFFERFLAGS_SILENT ;
 int EPSILON ;
 scalar_t__ FAILED (int ) ;
 int MAX_AV_PLANES ;
 int audio_resampler_resample (int ,int **,int*,scalar_t__*,int const* const*,int) ;
 int close_float (float,float,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ os_atomic_load_long (int *) ;
 int process_audio_delay (struct audio_monitor*,float**,int*,scalar_t__,int ) ;
 scalar_t__ pthread_mutex_trylock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_7__*,int *) ;
 int stub2 (TYPE_4__*,int,int **) ;
 int stub3 (TYPE_4__*,int,int ) ;

__attribute__((used)) static void on_audio_playback(void *param, obs_source_t *source,
         const struct audio_data *audio_data, bool muted)
{
 struct audio_monitor *monitor = param;
 IAudioRenderClient *render = monitor->render;
 uint8_t *resample_data[MAX_AV_PLANES];
 float vol = source->user_volume;
 uint32_t resample_frames;
 uint64_t ts_offset;
 bool success;
 BYTE *output;

 if (pthread_mutex_trylock(&monitor->playback_mutex) != 0) {
  return;
 }
 if (os_atomic_load_long(&source->activate_refs) == 0) {
  goto unlock;
 }

 success = audio_resampler_resample(
  monitor->resampler, resample_data, &resample_frames, &ts_offset,
  (const uint8_t *const *)audio_data->data,
  (uint32_t)audio_data->frames);
 if (!success) {
  goto unlock;
 }

 UINT32 pad = 0;
 monitor->client->lpVtbl->GetCurrentPadding(monitor->client, &pad);

 bool decouple_audio = source->async_unbuffered &&
         source->async_decoupled;

 if (monitor->source_has_video && !decouple_audio) {
  uint64_t ts = audio_data->timestamp - ts_offset;

  if (!process_audio_delay(monitor, (float **)(&resample_data[0]),
      &resample_frames, ts, pad)) {
   goto unlock;
  }
 }

 HRESULT hr =
  render->lpVtbl->GetBuffer(render, resample_frames, &output);
 if (FAILED(hr)) {
  goto unlock;
 }

 if (!muted) {

  if (!close_float(vol, 1.0f, EPSILON)) {
   register float *cur = (float *)resample_data[0];
   register float *end =
    cur + resample_frames * monitor->channels;

   while (cur < end)
    *(cur++) *= vol;
  }
  memcpy(output, resample_data[0],
         resample_frames * monitor->channels * sizeof(float));
 }

 render->lpVtbl->ReleaseBuffer(render, resample_frames,
          muted ? AUDCLNT_BUFFERFLAGS_SILENT : 0);

unlock:
 pthread_mutex_unlock(&monitor->playback_mutex);
}
