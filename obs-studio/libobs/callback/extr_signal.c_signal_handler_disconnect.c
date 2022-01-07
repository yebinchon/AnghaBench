
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* array; } ;
struct signal_info {int mutex; TYPE_6__ callbacks; scalar_t__ signalling; } ;
struct TYPE_8__ {int refs; } ;
typedef TYPE_2__ signal_handler_t ;
typedef int signal_callback_t ;
struct TYPE_7__ {int remove; int keep_ref; } ;


 size_t DARRAY_INVALID ;
 int da_erase (TYPE_6__,size_t) ;
 struct signal_info* getsignal_locked (TYPE_2__*,char const*) ;
 scalar_t__ os_atomic_dec_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 size_t signal_get_callback_idx (struct signal_info*,int ,void*) ;
 int signal_handler_actually_destroy (TYPE_2__*) ;

void signal_handler_disconnect(signal_handler_t *handler, const char *signal,
          signal_callback_t callback, void *data)
{
 struct signal_info *sig = getsignal_locked(handler, signal);
 bool keep_ref = 0;
 size_t idx;

 if (!sig)
  return;

 pthread_mutex_lock(&sig->mutex);

 idx = signal_get_callback_idx(sig, callback, data);
 if (idx != DARRAY_INVALID) {
  if (sig->signalling) {
   sig->callbacks.array[idx].remove = 1;
  } else {
   keep_ref = sig->callbacks.array[idx].keep_ref;
   da_erase(sig->callbacks, idx);
  }
 }

 pthread_mutex_unlock(&sig->mutex);

 if (keep_ref && os_atomic_dec_long(&handler->refs) == 0) {
  signal_handler_actually_destroy(handler);
 }
}
