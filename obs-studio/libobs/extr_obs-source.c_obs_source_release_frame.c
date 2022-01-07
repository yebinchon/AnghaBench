
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_source_frame {int refs; } ;
struct TYPE_4__ {int async_mutex; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_frame_destroy (struct obs_source_frame*) ;
 scalar_t__ os_atomic_dec_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove_async_frame (TYPE_1__*,struct obs_source_frame*) ;

void obs_source_release_frame(obs_source_t *source,
         struct obs_source_frame *frame)
{
 if (!frame)
  return;

 if (!source) {
  obs_source_frame_destroy(frame);
 } else {
  pthread_mutex_lock(&source->async_mutex);

  if (os_atomic_dec_long(&frame->refs) == 0)
   obs_source_frame_destroy(frame);
  else
   remove_async_frame(source, frame);

  pthread_mutex_unlock(&source->async_mutex);
 }
}
