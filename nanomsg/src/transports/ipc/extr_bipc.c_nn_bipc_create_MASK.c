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
struct nn_bipc {int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/  aipcs; int /*<<< orphan*/ * aipc; int /*<<< orphan*/  state; struct nn_ep* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_BIPC_SRC_USOCK ; 
 int /*<<< orphan*/  NN_BIPC_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_bipc*) ; 
 struct nn_bipc* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  nn_bipc_ep_ops ; 
 int /*<<< orphan*/  nn_bipc_handler ; 
 int FUNC2 (struct nn_bipc*) ; 
 int /*<<< orphan*/  nn_bipc_shutdown ; 
 int /*<<< orphan*/  FUNC3 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_bipc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9 (struct nn_ep *ep)
{
    struct nn_bipc *self;
    int rc;

    /*  Allocate the new endpoint object. */
    self = FUNC1 (sizeof (struct nn_bipc), "bipc");
    FUNC0 (self);


    /*  Initialise the structure. */
    self->ep = ep;
    FUNC4 (ep, &nn_bipc_ep_ops, self);
    FUNC5 (&self->fsm, nn_bipc_handler, nn_bipc_shutdown,
        FUNC3 (ep));
    self->state = NN_BIPC_STATE_IDLE;
    self->aipc = NULL;
    FUNC7 (&self->aipcs);

    /*  Start the state machine. */
    FUNC6 (&self->fsm);

    FUNC8 (&self->usock, NN_BIPC_SRC_USOCK, &self->fsm);

    rc = FUNC2 (self);
    if (rc != 0) {
        return rc;
    }

    return 0;
}