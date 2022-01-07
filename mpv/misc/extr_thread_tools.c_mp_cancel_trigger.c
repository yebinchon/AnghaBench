
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cancel {int lock; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int trigger_locked (struct mp_cancel*) ;

void mp_cancel_trigger(struct mp_cancel *c)
{
    pthread_mutex_lock(&c->lock);
    trigger_locked(c);
    pthread_mutex_unlock(&c->lock);
}
