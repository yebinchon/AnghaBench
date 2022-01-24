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
typedef  void* usec_t ;
struct rrdeng_page_descr {void* end_time; void* start_time; } ;
struct pg_cache_page_index {void* latest_time; void* oldest_time; int /*<<< orphan*/  lock; int /*<<< orphan*/  JudyL_array; } ;
typedef  scalar_t__ Word_t ;
typedef  struct rrdeng_page_descr* Pvoid_t ;

/* Variables and functions */
 void* INVALID_TIME ; 
 struct rrdeng_page_descr** FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct rrdeng_page_descr** FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PJE0 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct pg_cache_page_index *page_index)
{
    Pvoid_t *firstPValue, *lastPValue;
    Word_t firstIndex, lastIndex;
    struct rrdeng_page_descr *descr;
    usec_t oldest_time = INVALID_TIME;
    usec_t latest_time = INVALID_TIME;

    FUNC5(&page_index->lock);
    /* Find first page in range */
    firstIndex = (Word_t)0;
    firstPValue = FUNC0(page_index->JudyL_array, &firstIndex, PJE0);
    if (FUNC3(NULL != firstPValue)) {
        descr = *firstPValue;
        oldest_time = descr->start_time;
    }
    lastIndex = (Word_t)-1;
    lastPValue = FUNC1(page_index->JudyL_array, &lastIndex, PJE0);
    if (FUNC3(NULL != lastPValue)) {
        descr = *lastPValue;
        latest_time = descr->end_time;
    }
    FUNC6(&page_index->lock);

    if (FUNC4(NULL == firstPValue)) {
        FUNC2(NULL == lastPValue);
        page_index->oldest_time = page_index->latest_time = INVALID_TIME;
        return;
    }
    page_index->oldest_time = oldest_time;
    page_index->latest_time = latest_time;
}