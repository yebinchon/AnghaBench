
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_view {int channels_mutex; int * channels; } ;


 size_t MAX_CHANNELS ;
 int memset (int *,int ,int) ;
 int obs_source_release (int ) ;
 int pthread_mutex_destroy (int *) ;

void obs_main_view_free(struct obs_view *view)
{
 if (!view)
  return;

 for (size_t i = 0; i < MAX_CHANNELS; i++)
  obs_source_release(view->channels[i]);

 memset(view->channels, 0, sizeof(view->channels));
 pthread_mutex_destroy(&view->channels_mutex);
}
