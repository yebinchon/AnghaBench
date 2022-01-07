
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {int dummy; } ;
struct m_config_cache {void (* wakeup_dispatch_cb ) (void*) ;int * wakeup_dispatch_cb_ctx; struct mp_dispatch_queue* wakeup_dispatch_queue; } ;


 int * dispatch_notify ;
 int m_config_cache_set_wakeup_cb (struct m_config_cache*,int *,struct m_config_cache*) ;
 int mp_dispatch_cancel_fn (struct mp_dispatch_queue*,void (*) (void*),int *) ;

void m_config_cache_set_dispatch_change_cb(struct m_config_cache *cache,
                                           struct mp_dispatch_queue *dispatch,
                                           void (*cb)(void *ctx), void *cb_ctx)
{


    m_config_cache_set_wakeup_cb(cache, ((void*)0), ((void*)0));


    if (cache->wakeup_dispatch_queue) {
        mp_dispatch_cancel_fn(cache->wakeup_dispatch_queue,
                              cache->wakeup_dispatch_cb,
                              cache->wakeup_dispatch_cb_ctx);
    }

    cache->wakeup_dispatch_queue = ((void*)0);
    cache->wakeup_dispatch_cb = ((void*)0);
    cache->wakeup_dispatch_cb_ctx = ((void*)0);

    if (cb) {
        cache->wakeup_dispatch_queue = dispatch;
        cache->wakeup_dispatch_cb = cb;
        cache->wakeup_dispatch_cb_ctx = cb_ctx;
        m_config_cache_set_wakeup_cb(cache, dispatch_notify, cache);
    }
}
