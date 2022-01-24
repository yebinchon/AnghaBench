#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_pool {int /*<<< orphan*/  timer; TYPE_2__* ra; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* timer_destroy ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_pool*) ; 

void FUNC2(struct timer_pool *pool)
{
    if (!pool)
        return;

    pool->ra->fns->timer_destroy(pool->ra, pool->timer);
    FUNC1(pool);
}