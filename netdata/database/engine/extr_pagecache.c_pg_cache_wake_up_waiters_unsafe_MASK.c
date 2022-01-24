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
struct rrdeng_page_descr {struct page_cache_descr* pg_cache_descr; } ;
struct page_cache_descr {int /*<<< orphan*/  cond; scalar_t__ waiters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct rrdeng_page_descr *descr)
{
    struct page_cache_descr *pg_cache_descr = descr->pg_cache_descr;
    if (pg_cache_descr->waiters)
        FUNC0(&pg_cache_descr->cond);
}