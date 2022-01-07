
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct audio_monitor {int dummy; } ;
struct TYPE_3__ {int monitoring_mutex; int monitors; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;


 int audio_monitor_free (struct audio_monitor*) ;
 int bfree (struct audio_monitor*) ;
 int da_erase_item (int ,struct audio_monitor**) ;
 TYPE_2__* obs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void audio_monitor_destroy(struct audio_monitor *monitor)
{
 if (monitor) {
  audio_monitor_free(monitor);

  pthread_mutex_lock(&obs->audio.monitoring_mutex);
  da_erase_item(obs->audio.monitors, &monitor);
  pthread_mutex_unlock(&obs->audio.monitoring_mutex);

  bfree(monitor);
 }
}
