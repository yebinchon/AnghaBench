
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct audio_monitor {int buf; int delay_buffer; int resampler; TYPE_2__* render; TYPE_2__* client; TYPE_2__* device; scalar_t__ source; scalar_t__ ignore; } ;
struct TYPE_5__ {TYPE_1__* lpVtbl; } ;
struct TYPE_4__ {int (* Stop ) (TYPE_2__*) ;} ;


 int audio_resampler_destroy (int ) ;
 int circlebuf_free (int *) ;
 int da_free (int ) ;
 int obs_source_remove_audio_capture_callback (scalar_t__,int ,struct audio_monitor*) ;
 int on_audio_playback ;
 int safe_release (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static inline void audio_monitor_free(struct audio_monitor *monitor)
{
 if (monitor->ignore)
  return;

 if (monitor->source) {
  obs_source_remove_audio_capture_callback(
   monitor->source, on_audio_playback, monitor);
 }

 if (monitor->client)
  monitor->client->lpVtbl->Stop(monitor->client);

 safe_release(monitor->device);
 safe_release(monitor->client);
 safe_release(monitor->render);
 audio_resampler_destroy(monitor->resampler);
 circlebuf_free(&monitor->delay_buffer);
 da_free(monitor->buf);
}
