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
struct nn_worker {int /*<<< orphan*/  thread; int /*<<< orphan*/  timerset; int /*<<< orphan*/  efd_hndl; int /*<<< orphan*/  poller; int /*<<< orphan*/  efd; int /*<<< orphan*/  stop; int /*<<< orphan*/  tasks; int /*<<< orphan*/  sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nn_worker*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nn_worker_routine ; 

int FUNC10 (struct nn_worker *self)
{
    int rc;

    rc = FUNC1 (&self->efd);
    if (rc < 0)
        return rc;

    FUNC2 (&self->sync);
    FUNC6 (&self->tasks);
    FUNC7 (&self->stop);
    FUNC4 (&self->poller);
    FUNC3 (&self->poller, FUNC0 (&self->efd), &self->efd_hndl);
    FUNC5 (&self->poller, &self->efd_hndl);
    FUNC9 (&self->timerset);
    FUNC8 (&self->thread, nn_worker_routine, self);

    return 0;
}