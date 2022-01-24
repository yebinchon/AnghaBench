#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_filter_internal {int num_children; struct mp_filter** children; } ;
struct mp_filter {TYPE_3__* in; int /*<<< orphan*/ * ppins; scalar_t__ num_pins; } ;
struct filter_runner {int num_pending; struct filter_runner* async_pending; int /*<<< orphan*/  async_lock; struct mp_filter* root_filter; struct mp_filter** pending; } ;
struct TYPE_6__ {TYPE_2__* parent; TYPE_1__* info; struct filter_runner* runner; } ;
struct TYPE_5__ {struct mp_filter_internal* in; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct mp_filter*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct filter_runner*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC7 (struct filter_runner*) ; 

__attribute__((used)) static void FUNC8(void *p)
{
    struct mp_filter *f = p;
    struct filter_runner *r = f->in->runner;

    if (f->in->info->destroy)
        f->in->info->destroy(f);

    // For convenience, free child filters.
    FUNC3(f);

    while (f->num_pins)
        FUNC4(f, f->ppins[0]);

    // Just make sure the filter is not still in the async notifications set.
    // There will be no more new notifications at this point (due to destroy()).
    FUNC2(r);

    for (int n = 0; n < r->num_pending; n++) {
        if (r->pending[n] == f) {
            FUNC0(r->pending, r->num_pending, n);
            break;
        }
    }

    if (f->in->parent) {
        struct mp_filter_internal *p_in = f->in->parent->in;
        for (int n = 0; n < p_in->num_children; n++) {
            if (p_in->children[n] == f) {
                FUNC0(p_in->children, p_in->num_children, n);
                break;
            }
        }
    }

    if (r->root_filter == f) {
        FUNC1(!f->in->parent);
        FUNC5(&r->async_lock);
        FUNC7(r->async_pending);
        FUNC7(r);
    }
}