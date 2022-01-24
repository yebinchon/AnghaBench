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
typedef  int usec_t ;
struct rrdeng_page_descr {int dummy; } ;
struct pg_cache_page_index {int /*<<< orphan*/  JudyL_array; } ;
typedef  scalar_t__ Word_t ;
typedef  struct rrdeng_page_descr* Pvoid_t ;

/* Variables and functions */
 struct rrdeng_page_descr** FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct rrdeng_page_descr** FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PJE0 ; 
 int USEC_PER_SEC ; 
 scalar_t__ FUNC2 (struct rrdeng_page_descr*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline struct rrdeng_page_descr *
        FUNC4(struct pg_cache_page_index *page_index, usec_t start_time, usec_t end_time)
{
    struct rrdeng_page_descr *descr = NULL;
    Pvoid_t *PValue;
    Word_t Index;

    Index = (Word_t)(start_time / USEC_PER_SEC);
    PValue = FUNC1(page_index->JudyL_array, &Index, PJE0);
    if (FUNC3(NULL != PValue)) {
        descr = *PValue;
        if (FUNC2(descr, start_time, end_time)) {
            return descr;
        }
    }

    Index = (Word_t)(start_time / USEC_PER_SEC);
    PValue = FUNC0(page_index->JudyL_array, &Index, PJE0);
    if (FUNC3(NULL != PValue)) {
        descr = *PValue;
        if (FUNC2(descr, start_time, end_time)) {
            return descr;
        }
    }

    return NULL;
}