#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_dispatch_queue {int dummy; } ;
struct m_config_cache {void (* wakeup_dispatch_cb ) (void*) ;int /*<<< orphan*/ * wakeup_dispatch_cb_ctx; struct mp_dispatch_queue* wakeup_dispatch_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/ * dispatch_notify ; 
 int /*<<< orphan*/  FUNC0 (struct m_config_cache*,int /*<<< orphan*/ *,struct m_config_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_dispatch_queue*,void (*) (void*),int /*<<< orphan*/ *) ; 

void FUNC2(struct m_config_cache *cache,
                                           struct mp_dispatch_queue *dispatch,
                                           void (*cb)(void *ctx), void *cb_ctx)
{
    // Removing the old one is tricky. First make sure no new notifications will
    // come.
    FUNC0(cache, NULL, NULL);
    // Remove any pending notifications (assume we're on the same thread as
    // any potential mp_dispatch_queue_process() callers).
    if (cache->wakeup_dispatch_queue) {
        FUNC1(cache->wakeup_dispatch_queue,
                              cache->wakeup_dispatch_cb,
                              cache->wakeup_dispatch_cb_ctx);
    }

    cache->wakeup_dispatch_queue = NULL;
    cache->wakeup_dispatch_cb = NULL;
    cache->wakeup_dispatch_cb_ctx = NULL;

    if (cb) {
        cache->wakeup_dispatch_queue = dispatch;
        cache->wakeup_dispatch_cb = cb;
        cache->wakeup_dispatch_cb_ctx = cb_ctx;
        FUNC0(cache, dispatch_notify, cache);
    }
}