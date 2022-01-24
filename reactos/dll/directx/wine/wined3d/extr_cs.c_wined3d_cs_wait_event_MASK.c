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
struct wined3d_cs {int /*<<< orphan*/  event; int /*<<< orphan*/  waiting_for_event; int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t WINED3D_CS_QUEUE_DEFAULT ; 
 size_t WINED3D_CS_QUEUE_MAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wined3d_cs*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct wined3d_cs *cs)
{
    FUNC1(&cs->waiting_for_event, TRUE);

    /* The main thread might have enqueued a command and blocked on it after
     * the CS thread decided to enter wined3d_cs_wait_event(), but before
     * "waiting_for_event" was set.
     *
     * Likewise, we can race with the main thread when resetting
     * "waiting_for_event", in which case we would need to call
     * WaitForSingleObject() because the main thread called SetEvent(). */
    if (!(FUNC3(cs, &cs->queue[WINED3D_CS_QUEUE_DEFAULT])
            && FUNC3(cs, &cs->queue[WINED3D_CS_QUEUE_MAP]))
            && FUNC0(&cs->waiting_for_event, FALSE, TRUE))
        return;

    FUNC2(cs->event, INFINITE);
}