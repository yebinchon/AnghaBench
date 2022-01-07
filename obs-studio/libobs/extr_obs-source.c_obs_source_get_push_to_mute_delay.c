
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int audio_mutex; int push_to_mute_delay; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

uint64_t obs_source_get_push_to_mute_delay(obs_source_t *source)
{
 uint64_t delay;
 if (!obs_source_valid(source, "obs_source_get_push_to_mute_delay"))
  return 0;

 pthread_mutex_lock(&source->audio_mutex);
 delay = source->push_to_mute_delay;
 pthread_mutex_unlock(&source->audio_mutex);

 return delay;
}
