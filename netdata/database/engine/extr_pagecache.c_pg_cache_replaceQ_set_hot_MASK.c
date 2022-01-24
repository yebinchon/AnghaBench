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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct page_cache {TYPE_1__ replaceQ; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rrdengine_instance *ctx,
                               struct rrdeng_page_descr *descr)
{
    struct page_cache *pg_cache = &ctx->pg_cache;

    FUNC2(&pg_cache->replaceQ.lock);
    FUNC0(ctx, descr);
    FUNC1(ctx, descr);
    FUNC3(&pg_cache->replaceQ.lock);
}