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
struct vo_internal {int queued_events; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; } ;
struct vo {struct vo_internal* in; } ;
struct timespec {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int VO_EVENT_LIVE_RESIZING ; 
 scalar_t__ FUNC0 () ; 
 struct timespec FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct vo *vo, int64_t target)
{
    struct vo_internal *in = vo->in;
    struct timespec ts = FUNC1(target);
    FUNC3(&in->lock);
    while (target > FUNC0()) {
        if (in->queued_events & VO_EVENT_LIVE_RESIZING)
            break;
        if (FUNC2(&in->wakeup, &in->lock, &ts))
            break;
    }
    FUNC4(&in->lock);
}