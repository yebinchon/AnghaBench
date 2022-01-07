
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct global_callback_info {void* member_1; int member_3; int member_2; int member_0; } ;
struct TYPE_3__ {int global_callbacks_mutex; int global_callbacks; } ;
typedef TYPE_1__ signal_handler_t ;
typedef int global_signal_callback_t ;


 size_t DARRAY_INVALID ;
 size_t da_find (int ,struct global_callback_info*,int ) ;
 int da_push_back (int ,struct global_callback_info*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void signal_handler_connect_global(signal_handler_t *handler,
       global_signal_callback_t callback,
       void *data)
{
 struct global_callback_info cb_data = {callback, data, 0, 0};
 size_t idx;

 if (!handler || !callback)
  return;

 pthread_mutex_lock(&handler->global_callbacks_mutex);

 idx = da_find(handler->global_callbacks, &cb_data, 0);
 if (idx == DARRAY_INVALID)
  da_push_back(handler->global_callbacks, &cb_data);

 pthread_mutex_unlock(&handler->global_callbacks_mutex);
}
