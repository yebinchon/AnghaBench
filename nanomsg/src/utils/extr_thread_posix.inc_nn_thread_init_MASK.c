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
struct nn_thread {int /*<<< orphan*/  handle; void* arg; int /*<<< orphan*/ * routine; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  nn_thread_routine ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  nn_thread_main_routine ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (struct nn_thread *self,
    nn_thread_routine *routine, void *arg)
{
    int rc;
    sigset_t new_sigmask;
    sigset_t old_sigmask;
 
    /*  No signals should be processed by this thread. The library doesn't
        use signals and thus all the signals should be delivered to application
        threads, not to worker threads. */
    rc = FUNC4 (&new_sigmask);
    FUNC0 (rc == 0);
    rc = FUNC3 (SIG_BLOCK, &new_sigmask, &old_sigmask);
    FUNC1 (rc == 0, rc);

    self->routine = routine;
    self->arg = arg;
    rc = FUNC2 (&self->handle, NULL, nn_thread_main_routine,
        (void*) self);
    FUNC1 (rc == 0, rc);

    /*  Restore signal set to what it was before. */
    rc = FUNC3 (SIG_SETMASK, &old_sigmask, NULL);
    FUNC1 (rc == 0, rc);
}