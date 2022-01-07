
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dr_helper {int thread_valid; int thread_lock; int thread; } ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;

void dr_helper_acquire_thread(struct dr_helper *dr)
{
    pthread_mutex_lock(&dr->thread_lock);
    assert(!dr->thread_valid);
    dr->thread_valid = 1;
    dr->thread = pthread_self();
    pthread_mutex_unlock(&dr->thread_lock);
}
