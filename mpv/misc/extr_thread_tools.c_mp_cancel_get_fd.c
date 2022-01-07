
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cancel {scalar_t__* wakeup_pipe; int lock; } ;


 int mp_make_wakeup_pipe (scalar_t__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int retrigger_locked (struct mp_cancel*) ;

int mp_cancel_get_fd(struct mp_cancel *c)
{
    pthread_mutex_lock(&c->lock);
    if (c->wakeup_pipe[0] < 0) {
        mp_make_wakeup_pipe(c->wakeup_pipe);
        retrigger_locked(c);
    }
    pthread_mutex_unlock(&c->lock);


    return c->wakeup_pipe[0];
}
