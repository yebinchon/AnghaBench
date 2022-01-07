
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct defer_call {void* cb; int call; } ;
typedef int info ;
typedef int defer_call_cb ;


 int circlebuf_push_back (int *,struct defer_call*,int) ;
 int defer_call_exit ;
 int defer_call_mutex ;
 int defer_call_queue ;
 int defer_call_semaphore ;
 int os_sem_post (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void defer_call_post(defer_call_cb call, void *cb)
{
 struct defer_call info;
 info.call = call;
 info.cb = cb;

 pthread_mutex_lock(&defer_call_mutex);
 if (!defer_call_exit)
  circlebuf_push_back(&defer_call_queue, &info, sizeof(info));
 pthread_mutex_unlock(&defer_call_mutex);

 os_sem_post(defer_call_semaphore);
}
