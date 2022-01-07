
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_source_frame {int refs; } ;
struct TYPE_4__ {int async_mutex; struct obs_source_frame* cur_async_frame; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_valid (TYPE_1__*,char*) ;
 int os_atomic_inc_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct obs_source_frame *obs_source_get_frame(obs_source_t *source)
{
 struct obs_source_frame *frame = ((void*)0);

 if (!obs_source_valid(source, "obs_source_get_frame"))
  return ((void*)0);

 pthread_mutex_lock(&source->async_mutex);

 frame = source->cur_async_frame;
 source->cur_async_frame = ((void*)0);

 if (frame) {
  os_atomic_inc_long(&frame->refs);
 }

 pthread_mutex_unlock(&source->async_mutex);

 return frame;
}
