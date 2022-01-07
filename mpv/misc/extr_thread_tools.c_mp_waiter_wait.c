
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_waiter {uintptr_t value; int wakeup; int lock; int done; } ;


 int memset (struct mp_waiter*,int,int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

uintptr_t mp_waiter_wait(struct mp_waiter *waiter)
{
    pthread_mutex_lock(&waiter->lock);
    while (!waiter->done)
        pthread_cond_wait(&waiter->wakeup, &waiter->lock);
    pthread_mutex_unlock(&waiter->lock);

    uintptr_t ret = waiter->value;
    pthread_mutex_destroy(&waiter->lock);
    pthread_cond_destroy(&waiter->wakeup);

    memset(waiter, 0xCA, sizeof(*waiter));

    return ret;
}
