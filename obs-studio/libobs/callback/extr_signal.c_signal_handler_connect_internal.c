
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct signal_info {int mutex; int callbacks; } ;
struct signal_callback {void* member_1; int member_2; int member_3; int member_0; } ;
struct TYPE_4__ {int refs; int mutex; } ;
typedef TYPE_1__ signal_handler_t ;
typedef int signal_callback_t ;


 size_t DARRAY_INVALID ;
 int LOG_WARNING ;
 int blog (int ,char*,char const*) ;
 int da_push_back (int ,struct signal_callback*) ;
 struct signal_info* getsignal (TYPE_1__*,char const*,struct signal_info**) ;
 int os_atomic_inc_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 size_t signal_get_callback_idx (struct signal_info*,int ,void*) ;

__attribute__((used)) static void signal_handler_connect_internal(signal_handler_t *handler,
         const char *signal,
         signal_callback_t callback,
         void *data, bool keep_ref)
{
 struct signal_info *sig, *last;
 struct signal_callback cb_data = {callback, data, 0, keep_ref};
 size_t idx;

 if (!handler)
  return;

 pthread_mutex_lock(&handler->mutex);
 sig = getsignal(handler, signal, &last);
 pthread_mutex_unlock(&handler->mutex);

 if (!sig) {
  blog(LOG_WARNING,
       "signal_handler_connect: "
       "signal '%s' not found",
       signal);
  return;
 }



 pthread_mutex_lock(&sig->mutex);

 if (keep_ref)
  os_atomic_inc_long(&handler->refs);

 idx = signal_get_callback_idx(sig, callback, data);
 if (keep_ref || idx == DARRAY_INVALID)
  da_push_back(sig->callbacks, &cb_data);

 pthread_mutex_unlock(&sig->mutex);
}
