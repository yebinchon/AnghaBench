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
struct nn_worker {int /*<<< orphan*/  sync; int /*<<< orphan*/  tasks; int /*<<< orphan*/  stop; int /*<<< orphan*/  efd; int /*<<< orphan*/  poller; int /*<<< orphan*/  timerset; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11 (struct nn_worker *self)
{
    /*  Ask worker thread to terminate. */
    FUNC2 (&self->sync);
    FUNC7 (&self->tasks, &self->stop);
    FUNC0 (&self->efd);
    FUNC4 (&self->sync);

    /*  Wait till worker thread terminates. */
    FUNC9 (&self->thread);

    /*  Clean up. */
    FUNC10 (&self->timerset);
    FUNC5 (&self->poller);
    FUNC1 (&self->efd);
    FUNC6 (&self->stop);
    FUNC8 (&self->tasks);
    FUNC3 (&self->sync);
}