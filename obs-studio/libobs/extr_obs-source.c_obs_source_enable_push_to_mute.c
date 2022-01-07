
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int push_to_mute_enabled; int audio_mutex; } ;
typedef TYPE_1__ obs_source_t ;


 int LOG_INFO ;
 int OBS_SOURCE_AUDIO ;
 int blog (int ,char*,int ,char*) ;
 int obs_source_get_name (TYPE_1__*) ;
 int obs_source_get_output_flags (TYPE_1__*) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int source_signal_push_to_changed (TYPE_1__*,char*,int) ;

void obs_source_enable_push_to_mute(obs_source_t *source, bool enabled)
{
 if (!obs_source_valid(source, "obs_source_enable_push_to_mute"))
  return;

 pthread_mutex_lock(&source->audio_mutex);
 bool changed = source->push_to_mute_enabled != enabled;
 if (obs_source_get_output_flags(source) & OBS_SOURCE_AUDIO && changed)
  blog(LOG_INFO, "source '%s' %s push-to-mute",
       obs_source_get_name(source),
       enabled ? "enabled" : "disabled");

 source->push_to_mute_enabled = enabled;

 if (changed)
  source_signal_push_to_changed(source, "push_to_mute_changed",
           enabled);
 pthread_mutex_unlock(&source->audio_mutex);
}
