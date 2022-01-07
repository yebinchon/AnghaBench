
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {int async_wakeup_sent; int async_lock; int wakeup_ctx; int (* wakeup_cb ) (int ) ;int num_async_pending; int async_pending; } ;
struct TYPE_2__ {int async_pending; struct filter_runner* runner; } ;


 int MP_TARRAY_APPEND (int *,int ,int ,struct mp_filter*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void filter_wakeup(struct mp_filter *f, bool mark_only)
{
    struct filter_runner *r = f->in->runner;
    pthread_mutex_lock(&r->async_lock);
    if (!f->in->async_pending) {
        f->in->async_pending = 1;

        MP_TARRAY_APPEND(((void*)0), r->async_pending, r->num_async_pending, f);
        if (!mark_only && !r->async_wakeup_sent) {
            if (r->wakeup_cb)
                r->wakeup_cb(r->wakeup_ctx);
            r->async_wakeup_sent = 1;
        }
    }
    pthread_mutex_unlock(&r->async_lock);
}
