
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ enabled ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int root_mutex ;
 scalar_t__ thread_enabled ;

void profile_reenable_thread(void)
{
 if (thread_enabled)
  return;

 pthread_mutex_lock(&root_mutex);
 thread_enabled = enabled;
 pthread_mutex_unlock(&root_mutex);
}
