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
struct nn_ep {int dummy; } ;
struct nn_cinproc {int /*<<< orphan*/  item; int /*<<< orphan*/  fsm; int /*<<< orphan*/  sinprocs; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_CINPROC_STATE_IDLE ; 
 int /*<<< orphan*/  NN_STAT_INPROGRESS_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct nn_cinproc*) ; 
 struct nn_cinproc* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  nn_cinproc_connect ; 
 int /*<<< orphan*/  nn_cinproc_handler ; 
 int /*<<< orphan*/  nn_cinproc_ops ; 
 int /*<<< orphan*/  nn_cinproc_shutdown ; 
 int /*<<< orphan*/  FUNC2 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_ep*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_cinproc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10 (struct nn_ep *ep)
{
    struct nn_cinproc *self;

    self = FUNC1 (sizeof (struct nn_cinproc), "cinproc");
    FUNC0 (self);

    FUNC4 (ep, &nn_cinproc_ops, self);

    FUNC8 (&self->item, ep);
    FUNC5 (&self->fsm, nn_cinproc_handler, nn_cinproc_shutdown,
        FUNC2 (ep));
    self->state = NN_CINPROC_STATE_IDLE;
    FUNC9 (&self->sinprocs);

    FUNC3 (ep, NN_STAT_INPROGRESS_CONNECTIONS, 1);

    /*  Start the state machine. */
    FUNC6 (&self->fsm);

    /*  Register the inproc endpoint into a global repository. */
    FUNC7 (&self->item, nn_cinproc_connect);

    return 0;
}