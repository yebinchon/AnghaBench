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
struct page_cache_descr {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; scalar_t__ waiters; scalar_t__ refcnt; int /*<<< orphan*/ * next; int /*<<< orphan*/  prev; scalar_t__ flags; int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page_cache_descr* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

struct page_cache_descr *FUNC5(struct rrdengine_instance *ctx)
{
    struct page_cache_descr *pg_cache_descr;

    pg_cache_descr = FUNC1(sizeof(*pg_cache_descr));
    FUNC2(&ctx->stats.page_cache_descriptors, 1);
    pg_cache_descr->page = NULL;
    pg_cache_descr->flags = 0;
    pg_cache_descr->prev = *(pg_cache_descr->next = NULL);
    pg_cache_descr->refcnt = 0;
    pg_cache_descr->waiters = 0;
    FUNC0(0 == FUNC3(&pg_cache_descr->cond));
    FUNC0(0 == FUNC4(&pg_cache_descr->mutex));

    return pg_cache_descr;
}