
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int * source; } ;
typedef int obs_source_t ;


 int audio_monitor_free (struct audio_monitor*) ;
 int audio_monitor_init (struct audio_monitor*,int *) ;
 int audio_monitor_init_final (struct audio_monitor*) ;
 int memset (struct audio_monitor*,int ,int) ;

void audio_monitor_reset(struct audio_monitor *monitor)
{
 bool success;

 obs_source_t *source = monitor->source;
 audio_monitor_free(monitor);
 memset(monitor, 0, sizeof(*monitor));

 success = audio_monitor_init(monitor, source);
 if (success)
  audio_monitor_init_final(monitor);
}
