
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int playback_mutex; int source; int member_0; } ;


 int audio_monitor_free (struct audio_monitor*) ;
 int audio_monitor_init (struct audio_monitor*,int ) ;
 int audio_monitor_init_final (struct audio_monitor*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void audio_monitor_reset(struct audio_monitor *monitor)
{
 struct audio_monitor new_monitor = {0};
 bool success;
 audio_monitor_free(monitor);

 pthread_mutex_lock(&monitor->playback_mutex);
 success = audio_monitor_init(&new_monitor, monitor->source);
 pthread_mutex_unlock(&monitor->playback_mutex);

 if (success) {
  *monitor = new_monitor;
  audio_monitor_init_final(monitor);
 } else {
  audio_monitor_free(&new_monitor);
 }
}
