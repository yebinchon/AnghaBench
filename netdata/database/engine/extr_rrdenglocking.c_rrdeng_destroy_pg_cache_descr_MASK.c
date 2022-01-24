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
struct TYPE_2__ {int /*<<< orphan*/  page_cache_descriptors; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct page_cache_descr {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_cache_descr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rrdengine_instance *ctx, struct page_cache_descr *pg_cache_descr)
{
    FUNC2(&pg_cache_descr->cond);
    FUNC3(&pg_cache_descr->mutex);
    FUNC0(pg_cache_descr);
    FUNC1(&ctx->stats.page_cache_descriptors, -1);
}