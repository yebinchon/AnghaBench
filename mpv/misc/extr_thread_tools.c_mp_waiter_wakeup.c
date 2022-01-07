
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_waiter {int done; uintptr_t value; int lock; int wakeup; } ;


 int assert (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_waiter_wakeup(struct mp_waiter *waiter, uintptr_t value)
{
    pthread_mutex_lock(&waiter->lock);
    assert(!waiter->done);
    waiter->done = 1;
    waiter->value = value;
    pthread_cond_signal(&waiter->wakeup);
    pthread_mutex_unlock(&waiter->lock);
}
