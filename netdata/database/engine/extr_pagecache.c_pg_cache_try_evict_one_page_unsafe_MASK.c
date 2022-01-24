#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; struct page_cache_descr* head; } ;
struct page_cache {TYPE_1__ replaceQ; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int dummy; } ;
struct page_cache_descr {unsigned long flags; struct rrdeng_page_descr* descr; struct page_cache_descr* next; } ;

/* Variables and functions */
 unsigned long RRD_PAGE_DIRTY ; 
 unsigned long RRD_PAGE_POPULATED ; 
 int /*<<< orphan*/  FUNC0 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 scalar_t__ FUNC3 (struct rrdeng_page_descr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    unsigned long old_flags;
    struct rrdeng_page_descr *descr;
    struct page_cache_descr *pg_cache_descr = NULL;

    FUNC7(&pg_cache->replaceQ.lock);
    for (pg_cache_descr = pg_cache->replaceQ.head ; NULL != pg_cache_descr ; pg_cache_descr = pg_cache_descr->next) {
        descr = pg_cache_descr->descr;

        FUNC4(ctx, descr);
        old_flags = pg_cache_descr->flags;
        if ((old_flags & RRD_PAGE_POPULATED) && !(old_flags & RRD_PAGE_DIRTY) && FUNC3(descr, 1)) {
            /* must evict */
            FUNC0(ctx, descr);
            FUNC1(descr);
            FUNC2(ctx, descr);

            FUNC5(ctx, descr);
            FUNC8(&pg_cache->replaceQ.lock);

            FUNC6(ctx, descr);

            return 1;
        }
        FUNC5(ctx, descr);
    }
    FUNC8(&pg_cache->replaceQ.lock);

    /* failed to evict */
    return 0;
}