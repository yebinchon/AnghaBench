
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct global_callback_info {void* member_1; int member_2; int remove; scalar_t__ signaling; int member_0; } ;
struct TYPE_6__ {struct global_callback_info* array; } ;
struct TYPE_5__ {int global_callbacks_mutex; TYPE_3__ global_callbacks; } ;
typedef TYPE_1__ signal_handler_t ;
typedef int global_signal_callback_t ;


 size_t DARRAY_INVALID ;
 int da_erase (TYPE_3__,size_t) ;
 size_t da_find (TYPE_3__,struct global_callback_info*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void signal_handler_disconnect_global(signal_handler_t *handler,
          global_signal_callback_t callback,
          void *data)
{
 struct global_callback_info cb_data = {callback, data, 0};
 size_t idx;

 if (!handler || !callback)
  return;

 pthread_mutex_lock(&handler->global_callbacks_mutex);

 idx = da_find(handler->global_callbacks, &cb_data, 0);
 if (idx != DARRAY_INVALID) {
  struct global_callback_info *cb =
   handler->global_callbacks.array + idx;

  if (cb->signaling)
   cb->remove = 1;
  else
   da_erase(handler->global_callbacks, idx);
 }

 pthread_mutex_unlock(&handler->global_callbacks_mutex);
}
