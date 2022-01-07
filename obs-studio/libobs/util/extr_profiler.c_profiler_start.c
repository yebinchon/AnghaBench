
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enabled ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int root_mutex ;

void profiler_start(void)
{
 pthread_mutex_lock(&root_mutex);
 enabled = 1;
 pthread_mutex_unlock(&root_mutex);
}
