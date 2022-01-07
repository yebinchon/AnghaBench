
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct audio_monitor {int member_0; } ;
typedef int obs_source_t ;
typedef int monitor ;
struct TYPE_3__ {int monitoring_mutex; int monitors; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;


 int audio_monitor_free (struct audio_monitor*) ;
 int audio_monitor_init (struct audio_monitor*,int *) ;
 int audio_monitor_init_final (struct audio_monitor*) ;
 struct audio_monitor* bmemdup (struct audio_monitor*,int) ;
 int da_push_back (int ,struct audio_monitor**) ;
 TYPE_2__* obs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct audio_monitor *audio_monitor_create(obs_source_t *source)
{
 struct audio_monitor monitor = {0};
 struct audio_monitor *out;

 if (!audio_monitor_init(&monitor, source)) {
  goto fail;
 }

 out = bmemdup(&monitor, sizeof(monitor));

 pthread_mutex_lock(&obs->audio.monitoring_mutex);
 da_push_back(obs->audio.monitors, &out);
 pthread_mutex_unlock(&obs->audio.monitoring_mutex);

 audio_monitor_init_final(out);
 return out;

fail:
 audio_monitor_free(&monitor);
 return ((void*)0);
}
