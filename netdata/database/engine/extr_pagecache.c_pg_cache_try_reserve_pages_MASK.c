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
struct page_cache {unsigned int populated_pages; int /*<<< orphan*/  pg_cache_rwlock; } ;
struct rrdengine_instance {unsigned int max_cache_pages; struct page_cache pg_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRDENGINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (struct rrdengine_instance*) ; 
 unsigned int FUNC3 (struct rrdengine_instance*) ; 
 int /*<<< orphan*/  FUNC4 (struct rrdengine_instance*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct rrdengine_instance *ctx, unsigned number)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    unsigned count = 0;
    int ret = 0;

    FUNC0(number < ctx->max_cache_pages);

    FUNC5(&pg_cache->pg_cache_rwlock);
    if (pg_cache->populated_pages + number >= FUNC3(ctx) + 1) {
        FUNC1(D_RRDENGINE,
              "==Page cache full. Trying to reserve %u pages.==",
              number);
        do {
            if (!FUNC4(ctx))
                break;
            ++count;
        } while (pg_cache->populated_pages + number >= FUNC3(ctx) + 1);
        FUNC1(D_RRDENGINE, "Evicted %u pages.", count);
    }

    if (pg_cache->populated_pages + number < FUNC2(ctx) + 1) {
        pg_cache->populated_pages += number;
        ret = 1; /* success */
    }
    FUNC6(&pg_cache->pg_cache_rwlock);

    return ret;
}