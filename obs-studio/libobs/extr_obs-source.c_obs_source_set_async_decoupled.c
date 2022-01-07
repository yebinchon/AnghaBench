
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int async_decoupled; int timing_set; int audio_buf_mutex; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_ptr_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reset_audio_data (TYPE_1__*,int ) ;

void obs_source_set_async_decoupled(obs_source_t *source, bool decouple)
{
 if (!obs_ptr_valid(source, "obs_source_set_async_decoupled"))
  return;

 source->async_decoupled = decouple;
 if (decouple) {
  pthread_mutex_lock(&source->audio_buf_mutex);
  source->timing_set = 0;
  reset_audio_data(source, 0);
  pthread_mutex_unlock(&source->audio_buf_mutex);
 }
}
