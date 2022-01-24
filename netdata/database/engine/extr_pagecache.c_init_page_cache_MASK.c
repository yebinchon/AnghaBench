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
struct page_cache {int /*<<< orphan*/  pg_cache_rwlock; scalar_t__ populated_pages; scalar_t__ page_descriptors; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct rrdengine_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct rrdengine_instance*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;

    pg_cache->page_descriptors = 0;
    pg_cache->populated_pages = 0;
    FUNC0(0 == FUNC4(&pg_cache->pg_cache_rwlock));

    FUNC2(ctx);
    FUNC3(ctx);
    FUNC1(ctx);
}