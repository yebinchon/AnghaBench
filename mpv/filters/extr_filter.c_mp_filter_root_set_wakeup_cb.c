
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {void (* wakeup_cb ) (void*) ;int async_lock; void* wakeup_ctx; } ;
struct TYPE_2__ {struct filter_runner* runner; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_filter_root_set_wakeup_cb(struct mp_filter *root,
                                  void (*wakeup_cb)(void *ctx), void *ctx)
{
    struct filter_runner *r = root->in->runner;
    pthread_mutex_lock(&r->async_lock);
    r->wakeup_cb = wakeup_cb;
    r->wakeup_ctx = ctx;
    pthread_mutex_unlock(&r->async_lock);
}
