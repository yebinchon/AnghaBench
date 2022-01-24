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
struct vo_internal {int queued_events; int internal_events; int /*<<< orphan*/  lock; } ;
struct vo {struct vo_internal* in; } ;

/* Variables and functions */
 int VO_EVENTS_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 

void FUNC4(struct vo *vo, int event)
{
    struct vo_internal *in = vo->in;
    FUNC0(&in->lock);
    if ((in->queued_events & event & VO_EVENTS_USER) != (event & VO_EVENTS_USER))
        FUNC2(vo);
    if (event)
        FUNC3(vo);
    in->queued_events |= event;
    in->internal_events |= event;
    FUNC1(&in->lock);
}