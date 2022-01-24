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
struct TYPE_2__ {int /*<<< orphan*/  pg_cache_evictions; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdeng_page_descr {struct page_cache_descr* pg_cache_descr; } ;
struct page_cache_descr {int /*<<< orphan*/  flags; int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int /*<<< orphan*/  RRD_PAGE_POPULATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_instance*,int) ; 

__attribute__((used)) static void FUNC2(struct rrdengine_instance *ctx, struct rrdeng_page_descr *descr)
{
    struct page_cache_descr *pg_cache_descr = descr->pg_cache_descr;

    FUNC0(pg_cache_descr->page);
    pg_cache_descr->page = NULL;
    pg_cache_descr->flags &= ~RRD_PAGE_POPULATED;
    FUNC1(ctx, 1);
    ++ctx->stats.pg_cache_evictions;
}