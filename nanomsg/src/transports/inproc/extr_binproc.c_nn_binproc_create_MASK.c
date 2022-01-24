#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nn_ep {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct nn_binproc {int /*<<< orphan*/  item; TYPE_1__ fsm; int /*<<< orphan*/  sinprocs; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_BINPROC_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_binproc*) ; 
 struct nn_binproc* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  nn_binproc_connect ; 
 int /*<<< orphan*/  nn_binproc_handler ; 
 int /*<<< orphan*/  nn_binproc_ops ; 
 int /*<<< orphan*/  nn_binproc_shutdown ; 
 int /*<<< orphan*/  FUNC2 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_binproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_binproc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13 (struct nn_ep *ep)
{
    int rc;
    struct nn_binproc *self;

    self = FUNC1 (sizeof (struct nn_binproc), "binproc");
    FUNC0 (self);

    FUNC9 (&self->item, ep);
    FUNC5 (&self->fsm, nn_binproc_handler, nn_binproc_shutdown,
        FUNC2 (ep));
    self->state = NN_BINPROC_STATE_IDLE;
    FUNC11 (&self->sinprocs);

    /*  Start the state machine. */
    FUNC6 (&self->fsm);

    /*  Register the inproc endpoint into a global repository. */
    rc = FUNC8 (&self->item, nn_binproc_connect);
    if (rc < 0) {
        FUNC12 (&self->sinprocs);

        /*  TODO: Now, this is ugly! We are getting the state machine into
            the idle state manually. How should it be done correctly? */
        self->fsm.state = 1;
        FUNC7 (&self->fsm);

        FUNC10 (&self->item);
        FUNC4 (self);
        return rc;
    }

    FUNC3 (ep, &nn_binproc_ops, self);
    return 0;
}