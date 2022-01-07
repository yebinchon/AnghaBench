
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int stream; int source; scalar_t__ ignore; } ;


 int obs_source_add_audio_capture_callback (int ,int ,struct audio_monitor*) ;
 int on_audio_playback ;
 int pulseaudio_set_underflow_callback (int ,int ,void*) ;
 int pulseaudio_stream_write ;
 int pulseaudio_underflow ;
 int pulseaudio_write_callback (int ,int ,void*) ;

__attribute__((used)) static void audio_monitor_init_final(struct audio_monitor *monitor)
{
 if (monitor->ignore)
  return;

 obs_source_add_audio_capture_callback(monitor->source,
           on_audio_playback, monitor);

 pulseaudio_write_callback(monitor->stream, pulseaudio_stream_write,
      (void *)monitor);

 pulseaudio_set_underflow_callback(monitor->stream, pulseaudio_underflow,
       (void *)monitor);
}
