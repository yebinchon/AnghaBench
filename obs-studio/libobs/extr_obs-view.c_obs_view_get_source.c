
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int channels_mutex; int ** channels; } ;
typedef TYPE_1__ obs_view_t ;
typedef int obs_source_t ;


 size_t MAX_CHANNELS ;
 int assert (int) ;
 int obs_source_addref (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

obs_source_t *obs_view_get_source(obs_view_t *view, uint32_t channel)
{
 obs_source_t *source;
 assert(channel < MAX_CHANNELS);

 if (!view)
  return ((void*)0);
 if (channel >= MAX_CHANNELS)
  return ((void*)0);

 pthread_mutex_lock(&view->channels_mutex);

 source = view->channels[channel];
 if (source)
  obs_source_addref(source);

 pthread_mutex_unlock(&view->channels_mutex);

 return source;
}
