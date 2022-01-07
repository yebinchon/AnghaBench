
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cancel {void (* cb ) (void*) ;int lock; void* cb_ctx; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int retrigger_locked (struct mp_cancel*) ;

void mp_cancel_set_cb(struct mp_cancel *c, void (*cb)(void *ctx), void *ctx)
{
    pthread_mutex_lock(&c->lock);
    c->cb = cb;
    c->cb_ctx = ctx;
    retrigger_locked(c);
    pthread_mutex_unlock(&c->lock);
}
