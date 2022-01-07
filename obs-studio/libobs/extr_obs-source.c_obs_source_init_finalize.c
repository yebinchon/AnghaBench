
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct obs_source {int context; struct obs_source* next_audio_source; struct obs_source** prev_next_audio_source; } ;
struct TYPE_3__ {int first_source; int sources_mutex; int audio_sources_mutex; struct obs_source* first_audio_source; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 scalar_t__ is_audio_source (struct obs_source*) ;
 TYPE_2__* obs ;
 int obs_context_data_insert (int *,int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void obs_source_init_finalize(struct obs_source *source)
{
 if (is_audio_source(source)) {
  pthread_mutex_lock(&obs->data.audio_sources_mutex);

  source->next_audio_source = obs->data.first_audio_source;
  source->prev_next_audio_source = &obs->data.first_audio_source;
  if (obs->data.first_audio_source)
   obs->data.first_audio_source->prev_next_audio_source =
    &source->next_audio_source;
  obs->data.first_audio_source = source;

  pthread_mutex_unlock(&obs->data.audio_sources_mutex);
 }

 obs_context_data_insert(&source->context, &obs->data.sources_mutex,
    &obs->data.first_source);
}
