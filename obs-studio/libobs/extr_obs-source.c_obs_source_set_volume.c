
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct calldata {int dummy; } ;
struct audio_action {float vol; int type; int timestamp; } ;
typedef int stack ;
struct TYPE_7__ {int private; int signals; } ;
struct TYPE_8__ {float user_volume; int audio_actions_mutex; int audio_actions; TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_9__ {int signals; } ;


 int AUDIO_ACTION_VOL ;
 scalar_t__ calldata_float (struct calldata*,char*) ;
 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_float (struct calldata*,char*,float) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_2__*) ;
 int da_push_back (int ,struct audio_action*) ;
 TYPE_5__* obs ;
 scalar_t__ obs_source_valid (TYPE_2__*,char*) ;
 int os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

void obs_source_set_volume(obs_source_t *source, float volume)
{
 if (obs_source_valid(source, "obs_source_set_volume")) {
  struct audio_action action = {.timestamp = os_gettime_ns(),
           .type = AUDIO_ACTION_VOL,
           .vol = volume};

  struct calldata data;
  uint8_t stack[128];

  calldata_init_fixed(&data, stack, sizeof(stack));
  calldata_set_ptr(&data, "source", source);
  calldata_set_float(&data, "volume", volume);

  signal_handler_signal(source->context.signals, "volume", &data);
  if (!source->context.private)
   signal_handler_signal(obs->signals, "source_volume",
           &data);

  volume = (float)calldata_float(&data, "volume");

  pthread_mutex_lock(&source->audio_actions_mutex);
  da_push_back(source->audio_actions, &action);
  pthread_mutex_unlock(&source->audio_actions_mutex);

  source->user_volume = volume;
 }
}
