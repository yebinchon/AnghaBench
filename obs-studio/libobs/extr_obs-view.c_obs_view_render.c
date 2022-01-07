
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obs_source {scalar_t__ removed; } ;
struct TYPE_3__ {int channels_mutex; struct obs_source** channels; } ;
typedef TYPE_1__ obs_view_t ;


 size_t MAX_CHANNELS ;
 int obs_source_release (struct obs_source*) ;
 int obs_source_video_render (struct obs_source*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_view_render(obs_view_t *view)
{
 if (!view)
  return;

 pthread_mutex_lock(&view->channels_mutex);

 for (size_t i = 0; i < MAX_CHANNELS; i++) {
  struct obs_source *source;

  source = view->channels[i];

  if (source) {
   if (source->removed) {
    obs_source_release(source);
    view->channels[i] = ((void*)0);
   } else {
    obs_source_video_render(source);
   }
  }
 }

 pthread_mutex_unlock(&view->channels_mutex);
}
