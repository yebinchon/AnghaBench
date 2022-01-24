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
struct TYPE_2__ {int /*<<< orphan*/  sockbase; } ;
struct nn_surveyor {int /*<<< orphan*/  fsm; scalar_t__ timedout; int /*<<< orphan*/  deadline; int /*<<< orphan*/  tosend; int /*<<< orphan*/  timer; int /*<<< orphan*/  surveyid; int /*<<< orphan*/  state; TYPE_1__ xsurveyor; } ;
struct nn_sockbase_vfptr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SURVEYOR_DEFAULT_DEADLINE ; 
 int /*<<< orphan*/  NN_SURVEYOR_SRC_DEADLINE_TIMER ; 
 int /*<<< orphan*/  NN_SURVEYOR_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nn_surveyor_handler ; 
 int /*<<< orphan*/  nn_surveyor_shutdown ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct nn_sockbase_vfptr const*,void*) ; 

__attribute__((used)) static void FUNC7 (struct nn_surveyor *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    FUNC6 (&self->xsurveyor, vfptr, hint);
    FUNC0 (&self->fsm, nn_surveyor_handler, nn_surveyor_shutdown,
        FUNC4 (&self->xsurveyor.sockbase));
    self->state = NN_SURVEYOR_STATE_IDLE;

    /*  Start assigning survey IDs beginning with a random number. This way
        there should be no key clashes even if the executable is re-started. */
    FUNC3 (&self->surveyid, sizeof (self->surveyid));

    FUNC5 (&self->timer, NN_SURVEYOR_SRC_DEADLINE_TIMER, &self->fsm);
    FUNC2 (&self->tosend, 0);
    self->deadline = NN_SURVEYOR_DEFAULT_DEADLINE;
    self->timedout = 0;

    /*  Start the state machine. */
    FUNC1 (&self->fsm);
}