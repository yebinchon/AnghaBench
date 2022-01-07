
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obs_source_frame {int refs; } ;
struct TYPE_3__ {int async_mutex; struct obs_source_frame* prev_async_frame; int * cur_async_frame; } ;
typedef TYPE_1__ obs_source_t ;


 int os_atomic_inc_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline struct obs_source_frame *get_prev_frame(obs_source_t *source,
            bool *updated)
{
 struct obs_source_frame *frame = ((void*)0);

 pthread_mutex_lock(&source->async_mutex);

 *updated = source->cur_async_frame != ((void*)0);
 frame = source->prev_async_frame;
 source->prev_async_frame = ((void*)0);

 if (frame)
  os_atomic_inc_long(&frame->refs);

 pthread_mutex_unlock(&source->async_mutex);

 return frame;
}
