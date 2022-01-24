#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crawler_expired_data {int crawl_complete; int /*<<< orphan*/  is_external; int /*<<< orphan*/  lock; int /*<<< orphan*/  end_time; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_1__ crawler_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  current_time ; 
 int /*<<< orphan*/  FUNC0 (struct crawler_expired_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(crawler_module_t *cm) {
    struct crawler_expired_data *d = (struct crawler_expired_data *) cm->data;
    FUNC1(&d->lock);
    d->end_time = current_time;
    d->crawl_complete = true;
    FUNC2(&d->lock);

    if (!d->is_external) {
        FUNC0(d);
    }
}