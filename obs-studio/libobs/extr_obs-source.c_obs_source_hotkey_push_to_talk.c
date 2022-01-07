
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source {int user_push_to_talk_pressed; int audio_actions_mutex; int audio_actions; } ;
struct audio_action {int set; int type; int timestamp; } ;
typedef int obs_hotkey_t ;
typedef int * obs_hotkey_id ;


 int AUDIO_ACTION_PTT ;
 int UNUSED_PARAMETER (int *) ;
 int da_push_back (int ,struct audio_action*) ;
 int os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void obs_source_hotkey_push_to_talk(void *data, obs_hotkey_id id,
        obs_hotkey_t *key, bool pressed)
{
 struct audio_action action = {.timestamp = os_gettime_ns(),
          .type = AUDIO_ACTION_PTT,
          .set = pressed};

 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(key);

 struct obs_source *source = data;

 pthread_mutex_lock(&source->audio_actions_mutex);
 da_push_back(source->audio_actions, &action);
 pthread_mutex_unlock(&source->audio_actions_mutex);

 source->user_push_to_talk_pressed = pressed;
}
