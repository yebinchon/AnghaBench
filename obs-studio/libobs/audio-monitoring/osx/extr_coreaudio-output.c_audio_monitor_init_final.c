
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int source; scalar_t__ ignore; } ;


 int obs_source_add_audio_capture_callback (int ,int ,struct audio_monitor*) ;
 int on_audio_playback ;

__attribute__((used)) static void audio_monitor_init_final(struct audio_monitor *monitor)
{
 if (monitor->ignore)
  return;

 obs_source_add_audio_capture_callback(monitor->source,
           on_audio_playback, monitor);
}
