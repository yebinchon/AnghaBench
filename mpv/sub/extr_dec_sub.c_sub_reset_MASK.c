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
struct dec_sub {int /*<<< orphan*/  lock; int /*<<< orphan*/ * new_segment; void* last_vo_pts; void* last_pkt_pts; TYPE_2__* sd; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (TYPE_2__*) ;} ;

/* Variables and functions */
 void* MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dec_sub *sub)
{
    FUNC0(&sub->lock);
    if (sub->sd->driver->reset)
        sub->sd->driver->reset(sub->sd);
    sub->last_pkt_pts = MP_NOPTS_VALUE;
    sub->last_vo_pts = MP_NOPTS_VALUE;
    FUNC3(sub->new_segment);
    sub->new_segment = NULL;
    FUNC1(&sub->lock);
}