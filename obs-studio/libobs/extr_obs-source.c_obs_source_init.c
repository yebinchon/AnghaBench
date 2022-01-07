
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ audio_mix; } ;
struct obs_source {float user_volume; float volume; float balance; int audio_active; int deinterlace_top_first; int audio_mixers; int private_settings; TYPE_2__* control; TYPE_1__ info; int async_mutex; int audio_mutex; int audio_cb_mutex; int audio_actions_mutex; int audio_buf_mutex; int filter_mutex; scalar_t__ sync_offset; } ;
typedef int pthread_mutexattr_t ;
typedef int obs_weak_source_t ;
struct TYPE_4__ {struct obs_source* source; } ;


 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int allocate_audio_mix_buffer (struct obs_source*) ;
 int allocate_audio_output_buffer (struct obs_source*) ;
 TYPE_2__* bzalloc (int) ;
 scalar_t__ is_audio_source (struct obs_source*) ;
 scalar_t__ is_composite_source (struct obs_source*) ;
 int obs_data_create () ;
 int obs_transition_init (struct obs_source*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_init_value (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

__attribute__((used)) static bool obs_source_init(struct obs_source *source)
{
 pthread_mutexattr_t attr;

 source->user_volume = 1.0f;
 source->volume = 1.0f;
 source->sync_offset = 0;
 source->balance = 0.5f;
 source->audio_active = 1;
 pthread_mutex_init_value(&source->filter_mutex);
 pthread_mutex_init_value(&source->async_mutex);
 pthread_mutex_init_value(&source->audio_mutex);
 pthread_mutex_init_value(&source->audio_buf_mutex);
 pthread_mutex_init_value(&source->audio_cb_mutex);

 if (pthread_mutexattr_init(&attr) != 0)
  return 0;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  return 0;
 if (pthread_mutex_init(&source->filter_mutex, &attr) != 0)
  return 0;
 if (pthread_mutex_init(&source->audio_buf_mutex, ((void*)0)) != 0)
  return 0;
 if (pthread_mutex_init(&source->audio_actions_mutex, ((void*)0)) != 0)
  return 0;
 if (pthread_mutex_init(&source->audio_cb_mutex, ((void*)0)) != 0)
  return 0;
 if (pthread_mutex_init(&source->audio_mutex, ((void*)0)) != 0)
  return 0;
 if (pthread_mutex_init(&source->async_mutex, ((void*)0)) != 0)
  return 0;

 if (is_audio_source(source) || is_composite_source(source))
  allocate_audio_output_buffer(source);
 if (source->info.audio_mix)
  allocate_audio_mix_buffer(source);

 if (source->info.type == OBS_SOURCE_TYPE_TRANSITION) {
  if (!obs_transition_init(source))
   return 0;
 }

 source->control = bzalloc(sizeof(obs_weak_source_t));
 source->deinterlace_top_first = 1;
 source->control->source = source;
 source->audio_mixers = 0xFF;

 source->private_settings = obs_data_create();
 return 1;
}
