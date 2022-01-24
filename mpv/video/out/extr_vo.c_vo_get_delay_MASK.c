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
struct vo_internal {int base_vsync; int vsync_interval; int /*<<< orphan*/  lock; TYPE_1__* current_frame; int /*<<< orphan*/  rendering; int /*<<< orphan*/  frame_queued; } ;
struct vo {struct vo_internal* in; } ;
typedef  int int64_t ;
struct TYPE_2__ {int num_vsyncs; int /*<<< orphan*/  display_synced; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

double FUNC4(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    FUNC2(&in->lock);
    FUNC0 (!in->frame_queued);
    int64_t res = 0;
    if (in->base_vsync && in->vsync_interval > 1 && in->current_frame) {
        res = in->base_vsync;
        int extra = !!in->rendering;
        res += (in->current_frame->num_vsyncs + extra) * in->vsync_interval;
        if (!in->current_frame->display_synced)
            res = 0;
    }
    FUNC3(&in->lock);
    return res ? (res - FUNC1()) / 1e6 : 0;
}