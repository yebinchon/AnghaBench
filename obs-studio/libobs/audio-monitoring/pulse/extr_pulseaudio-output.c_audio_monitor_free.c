
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int device; scalar_t__ stream; int new_data; int resampler; scalar_t__ source; scalar_t__ ignore; } ;


 int audio_resampler_destroy (int ) ;
 int bfree (int ) ;
 int circlebuf_free (int *) ;
 int obs_source_remove_audio_capture_callback (scalar_t__,int ,struct audio_monitor*) ;
 int on_audio_playback ;
 int pulseaudio_stop_playback (struct audio_monitor*) ;
 int pulseaudio_unref () ;

__attribute__((used)) static inline void audio_monitor_free(struct audio_monitor *monitor)
{
 if (monitor->ignore)
  return;

 if (monitor->source)
  obs_source_remove_audio_capture_callback(
   monitor->source, on_audio_playback, monitor);

 audio_resampler_destroy(monitor->resampler);
 circlebuf_free(&monitor->new_data);

 if (monitor->stream)
  pulseaudio_stop_playback(monitor);
 pulseaudio_unref();

 bfree(monitor->device);
}
