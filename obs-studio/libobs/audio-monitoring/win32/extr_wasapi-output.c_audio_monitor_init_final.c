
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct audio_monitor {int source_has_video; TYPE_2__* source; scalar_t__ ignore; } ;
struct TYPE_3__ {int output_flags; } ;
struct TYPE_4__ {TYPE_1__ info; } ;


 int OBS_SOURCE_VIDEO ;
 int obs_source_add_audio_capture_callback (TYPE_2__*,int ,struct audio_monitor*) ;
 int on_audio_playback ;

__attribute__((used)) static void audio_monitor_init_final(struct audio_monitor *monitor)
{
 if (monitor->ignore)
  return;

 monitor->source_has_video =
  (monitor->source->info.output_flags & OBS_SOURCE_VIDEO) != 0;
 obs_source_add_audio_capture_callback(monitor->source,
           on_audio_playback, monitor);
}
