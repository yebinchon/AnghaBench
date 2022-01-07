
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_data {int valid; int private_data; int main_view; int draw_callbacks_mutex; int services_mutex; int encoders_mutex; int outputs_mutex; int displays_mutex; int audio_sources_mutex; int sources_mutex; } ;
typedef int pthread_mutexattr_t ;
struct TYPE_2__ {struct obs_core_data data; } ;


 int PTHREAD_MUTEX_RECURSIVE ;
 int assert (int ) ;
 TYPE_1__* obs ;
 int obs_data_create () ;
 int obs_view_init (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_init_value (int *) ;
 int pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

__attribute__((used)) static bool obs_init_data(void)
{
 struct obs_core_data *data = &obs->data;
 pthread_mutexattr_t attr;

 assert(data != ((void*)0));

 pthread_mutex_init_value(&obs->data.displays_mutex);
 pthread_mutex_init_value(&obs->data.draw_callbacks_mutex);

 if (pthread_mutexattr_init(&attr) != 0)
  return 0;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  goto fail;
 if (pthread_mutex_init(&data->sources_mutex, &attr) != 0)
  goto fail;
 if (pthread_mutex_init(&data->audio_sources_mutex, &attr) != 0)
  goto fail;
 if (pthread_mutex_init(&data->displays_mutex, &attr) != 0)
  goto fail;
 if (pthread_mutex_init(&data->outputs_mutex, &attr) != 0)
  goto fail;
 if (pthread_mutex_init(&data->encoders_mutex, &attr) != 0)
  goto fail;
 if (pthread_mutex_init(&data->services_mutex, &attr) != 0)
  goto fail;
 if (pthread_mutex_init(&obs->data.draw_callbacks_mutex, &attr) != 0)
  goto fail;
 if (!obs_view_init(&data->main_view))
  goto fail;

 data->private_data = obs_data_create();
 data->valid = 1;

fail:
 pthread_mutexattr_destroy(&attr);
 return data->valid;
}
