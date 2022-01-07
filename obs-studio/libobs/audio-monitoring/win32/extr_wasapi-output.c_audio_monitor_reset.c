
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int * source; int playback_mutex; int member_0; } ;
typedef int obs_source_t ;


 int audio_monitor_free (struct audio_monitor*) ;
 int audio_monitor_init (struct audio_monitor*,int *) ;
 int audio_monitor_init_final (struct audio_monitor*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void audio_monitor_reset(struct audio_monitor *monitor)
{
 struct audio_monitor new_monitor = {0};
 bool success;

 pthread_mutex_lock(&monitor->playback_mutex);
 success = audio_monitor_init(&new_monitor, monitor->source);
 pthread_mutex_unlock(&monitor->playback_mutex);

 if (success) {
  obs_source_t *source = monitor->source;
  audio_monitor_free(monitor);
  *monitor = new_monitor;
  audio_monitor_init_final(monitor);
 } else {
  audio_monitor_free(&new_monitor);
 }
}
