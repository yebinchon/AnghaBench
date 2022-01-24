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
struct nn_timerset_hndl {int /*<<< orphan*/  list; } ;
struct nn_timerset {int /*<<< orphan*/  timeouts; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (struct nn_timerset *self, struct nn_timerset_hndl *hndl)
{
    int first;

    /*  Ignore if handle is not in the timeouts list. */
    if (!FUNC2 (&hndl->list))
        return 0;

    /*  If it was the first timeout that was removed, the actual waiting time
        may have changed. We'll thus return 1 to let the user know. */
    first = FUNC0 (&self->timeouts) == &hndl->list ? 1 : 0;
    FUNC1 (&self->timeouts, &hndl->list);
    return first;
}