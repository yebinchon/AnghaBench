
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct defer_call {int cb; int (* call ) (int ) ;} ;
typedef int info ;


 int UNUSED_PARAMETER (void*) ;
 int circlebuf_pop_front (int *,struct defer_call*,int) ;
 scalar_t__ defer_call_exit ;
 int defer_call_mutex ;
 int defer_call_queue ;
 int defer_call_semaphore ;
 scalar_t__ os_sem_wait (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void *defer_thread(void *unused)
{
 UNUSED_PARAMETER(unused);

 while (os_sem_wait(defer_call_semaphore) == 0) {
  struct defer_call info;

  pthread_mutex_lock(&defer_call_mutex);
  if (defer_call_exit) {
   pthread_mutex_unlock(&defer_call_mutex);
   return ((void*)0);
  }

  circlebuf_pop_front(&defer_call_queue, &info, sizeof(info));
  pthread_mutex_unlock(&defer_call_mutex);

  info.call(info.cb);
 }

 return ((void*)0);
}
