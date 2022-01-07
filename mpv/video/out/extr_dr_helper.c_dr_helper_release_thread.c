
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dr_helper {int thread_valid; int thread_lock; int thread; } ;


 int assert (int) ;
 int pthread_equal (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;

void dr_helper_release_thread(struct dr_helper *dr)
{
    pthread_mutex_lock(&dr->thread_lock);

    assert(dr->thread_valid);
    assert(pthread_equal(dr->thread, pthread_self()));
    dr->thread_valid = 0;
    pthread_mutex_unlock(&dr->thread_lock);
}
