
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_view {int channels_mutex; struct obs_source** channels; } ;
struct obs_source {int dummy; } ;


 int AUX_VIEW ;
 size_t MAX_CHANNELS ;
 int memset (struct obs_source**,int ,int) ;
 int obs_source_deactivate (struct obs_source*,int ) ;
 int obs_source_release (struct obs_source*) ;
 int pthread_mutex_destroy (int *) ;

void obs_view_free(struct obs_view *view)
{
 if (!view)
  return;

 for (size_t i = 0; i < MAX_CHANNELS; i++) {
  struct obs_source *source = view->channels[i];
  if (source) {
   obs_source_deactivate(source, AUX_VIEW);
   obs_source_release(source);
  }
 }

 memset(view->channels, 0, sizeof(view->channels));
 pthread_mutex_destroy(&view->channels_mutex);
}
