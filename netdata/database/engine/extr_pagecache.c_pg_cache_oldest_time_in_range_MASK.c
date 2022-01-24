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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  JudyHS_array; } ;
struct page_cache {TYPE_1__ metrics_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int /*<<< orphan*/  start_time; } ;
struct pg_cache_page_index {int /*<<< orphan*/  lock; } ;
typedef  struct pg_cache_page_index* Pvoid_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_TIME ; 
 struct pg_cache_page_index** FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct rrdeng_page_descr* FUNC1 (struct pg_cache_page_index*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

usec_t FUNC5(struct rrdengine_instance *ctx, uuid_t *id, usec_t start_time, usec_t end_time)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    struct rrdeng_page_descr *descr = NULL;
    Pvoid_t *PValue;
    struct pg_cache_page_index *page_index;

    FUNC3(&pg_cache->metrics_index.lock);
    PValue = FUNC0(pg_cache->metrics_index.JudyHS_array, id, sizeof(uuid_t));
    if (FUNC2(NULL != PValue)) {
        page_index = *PValue;
    }
    FUNC4(&pg_cache->metrics_index.lock);
    if (NULL == PValue) {
        return INVALID_TIME;
    }

    FUNC3(&page_index->lock);
    descr = FUNC1(page_index, start_time, end_time);
    if (NULL == descr) {
        FUNC4(&page_index->lock);
        return INVALID_TIME;
    }
    FUNC4(&page_index->lock);
    return descr->start_time;
}