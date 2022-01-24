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
struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {int num_async_pending; int async_wakeup_sent; int /*<<< orphan*/  async_lock; struct mp_filter** async_pending; } ;
struct TYPE_2__ {int async_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct filter_runner *r)
{
    FUNC1(&r->async_lock);
    for (int n = 0; n < r->num_async_pending; n++) {
        struct mp_filter *f = r->async_pending[n];
        FUNC0(f);
        f->in->async_pending = false;
    }
    r->num_async_pending = 0;
    r->async_wakeup_sent = false;
    FUNC2(&r->async_lock);
}