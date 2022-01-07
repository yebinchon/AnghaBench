
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_timer {int abort; int cond; int mutexattr; int mutex; int timer_thread; } ;


 int assert (int ) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_mutexattr_destroy (int *) ;

void ff_timer_free(struct ff_timer *timer)
{
 void *thread_result;

 assert(timer != ((void*)0));

 pthread_mutex_lock(&timer->mutex);
 timer->abort = 1;
 pthread_cond_signal(&timer->cond);
 pthread_mutex_unlock(&timer->mutex);

 pthread_join(timer->timer_thread, &thread_result);

 pthread_mutex_destroy(&timer->mutex);
 pthread_mutexattr_destroy(&timer->mutexattr);
 pthread_cond_destroy(&timer->cond);
}
