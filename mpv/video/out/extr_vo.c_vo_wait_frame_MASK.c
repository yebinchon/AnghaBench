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
struct vo_internal {int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; scalar_t__ rendering; scalar_t__ frame_queued; } ;
struct vo {struct vo_internal* in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    FUNC1(&in->lock);
    while (in->frame_queued || in->rendering)
        FUNC0(&in->wakeup, &in->lock);
    FUNC2(&in->lock);
}