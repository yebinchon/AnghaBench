
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct signal_info {int dummy; } ;
struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ signal_handler_t ;


 struct signal_info* getsignal (TYPE_1__*,char const*,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline struct signal_info *getsignal_locked(signal_handler_t *handler,
         const char *name)
{
 struct signal_info *sig;

 if (!handler)
  return ((void*)0);

 pthread_mutex_lock(&handler->mutex);
 sig = getsignal(handler, name, ((void*)0));
 pthread_mutex_unlock(&handler->mutex);

 return sig;
}
