
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_cache {int wakeup_dispatch_cb_ctx; int wakeup_dispatch_cb; int wakeup_dispatch_queue; } ;


 int assert (int ) ;
 int mp_dispatch_enqueue_notify (int ,int ,int ) ;

__attribute__((used)) static void dispatch_notify(void *p)
{
    struct m_config_cache *cache = p;

    assert(cache->wakeup_dispatch_queue);
    mp_dispatch_enqueue_notify(cache->wakeup_dispatch_queue,
                               cache->wakeup_dispatch_cb,
                               cache->wakeup_dispatch_cb_ctx);
}
