
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;


 int PTHREAD_MUTEX_RECURSIVE ;
 int da_init (int ) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;
 int python_paths ;
 int tick_mutex ;
 int timer_mutex ;

void obs_python_load(void)
{
 da_init(python_paths);

 pthread_mutexattr_t attr;
 pthread_mutexattr_init(&attr);
 pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);

 pthread_mutex_init(&tick_mutex, ((void*)0));
 pthread_mutex_init(&timer_mutex, &attr);
}
