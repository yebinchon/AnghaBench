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
typedef  int /*<<< orphan*/  uuid_t ;
struct pg_cache_page_index {int /*<<< orphan*/ * prev; void* latest_time; void* oldest_time; int /*<<< orphan*/  lock; int /*<<< orphan*/  id; scalar_t__ JudyL_array; } ;
typedef  scalar_t__ Pvoid_t ;

/* Variables and functions */
 void* INVALID_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct pg_cache_page_index* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

struct pg_cache_page_index *FUNC4(uuid_t *id)
{
    struct pg_cache_page_index *page_index;

    page_index = FUNC1(sizeof(*page_index));
    page_index->JudyL_array = (Pvoid_t) NULL;
    FUNC2(page_index->id, *id);
    FUNC0(0 == FUNC3(&page_index->lock));
    page_index->oldest_time = INVALID_TIME;
    page_index->latest_time = INVALID_TIME;
    page_index->prev = NULL;

    return page_index;
}