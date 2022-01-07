
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int audio_mutex; int push_to_mute_delay; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int source_signal_push_to_delay (TYPE_1__*,char*,int ) ;

void obs_source_set_push_to_mute_delay(obs_source_t *source, uint64_t delay)
{
 if (!obs_source_valid(source, "obs_source_set_push_to_mute_delay"))
  return;

 pthread_mutex_lock(&source->audio_mutex);
 source->push_to_mute_delay = delay;

 source_signal_push_to_delay(source, "push_to_mute_delay", delay);
 pthread_mutex_unlock(&source->audio_mutex);
}
