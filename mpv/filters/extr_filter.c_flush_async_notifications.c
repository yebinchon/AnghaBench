
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {int num_async_pending; int async_wakeup_sent; int async_lock; struct mp_filter** async_pending; } ;
struct TYPE_2__ {int async_pending; } ;


 int add_pending (struct mp_filter*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void flush_async_notifications(struct filter_runner *r)
{
    pthread_mutex_lock(&r->async_lock);
    for (int n = 0; n < r->num_async_pending; n++) {
        struct mp_filter *f = r->async_pending[n];
        add_pending(f);
        f->in->async_pending = 0;
    }
    r->num_async_pending = 0;
    r->async_wakeup_sent = 0;
    pthread_mutex_unlock(&r->async_lock);
}
