
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct calldata {int dummy; } ;
struct audio_action {int set; int type; int timestamp; } ;
typedef int stack ;
struct TYPE_6__ {int signals; } ;
struct TYPE_7__ {int user_muted; int audio_actions_mutex; int audio_actions; TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;


 int AUDIO_ACTION_MUTE ;
 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_bool (struct calldata*,char*,int) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_2__*) ;
 int da_push_back (int ,struct audio_action*) ;
 int obs_source_valid (TYPE_2__*,char*) ;
 int os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

void obs_source_set_muted(obs_source_t *source, bool muted)
{
 struct calldata data;
 uint8_t stack[128];
 struct audio_action action = {.timestamp = os_gettime_ns(),
          .type = AUDIO_ACTION_MUTE,
          .set = muted};

 if (!obs_source_valid(source, "obs_source_set_muted"))
  return;

 source->user_muted = muted;

 calldata_init_fixed(&data, stack, sizeof(stack));
 calldata_set_ptr(&data, "source", source);
 calldata_set_bool(&data, "muted", muted);

 signal_handler_signal(source->context.signals, "mute", &data);

 pthread_mutex_lock(&source->audio_actions_mutex);
 da_push_back(source->audio_actions, &action);
 pthread_mutex_unlock(&source->audio_actions_mutex);
}
