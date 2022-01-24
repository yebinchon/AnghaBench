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
struct nn_cipc {int /*<<< orphan*/  fsm; int /*<<< orphan*/  sipc; int /*<<< orphan*/  retry; int /*<<< orphan*/  usock; int /*<<< orphan*/  state; struct nn_ep* ep; } ;
typedef  int /*<<< orphan*/  reconnect_ivl_max ;
typedef  int /*<<< orphan*/  reconnect_ivl ;

/* Variables and functions */
 int /*<<< orphan*/  NN_CIPC_SRC_RECONNECT_TIMER ; 
 int /*<<< orphan*/  NN_CIPC_SRC_SIPC ; 
 int /*<<< orphan*/  NN_CIPC_SRC_USOCK ; 
 int /*<<< orphan*/  NN_CIPC_STATE_IDLE ; 
 int /*<<< orphan*/  NN_RECONNECT_IVL ; 
 int /*<<< orphan*/  NN_RECONNECT_IVL_MAX ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct nn_cipc*) ; 
 struct nn_cipc* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nn_cipc_ep_ops ; 
 int /*<<< orphan*/  nn_cipc_handler ; 
 int /*<<< orphan*/  nn_cipc_shutdown ; 
 int /*<<< orphan*/  FUNC4 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_cipc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nn_ep*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11 (struct nn_ep *ep)
{
    struct nn_cipc *self;
    int reconnect_ivl;
    int reconnect_ivl_max;
    size_t sz;

    /*  Allocate the new endpoint object. */
    self = FUNC1 (sizeof (struct nn_cipc), "cipc");
    FUNC0 (self);

    /*  Initialise the structure. */
    self->ep = ep;
    FUNC6 (ep, &nn_cipc_ep_ops, self);
    FUNC7 (&self->fsm, nn_cipc_handler, nn_cipc_shutdown,
        FUNC4 (ep));
    self->state = NN_CIPC_STATE_IDLE;
    FUNC10 (&self->usock, NN_CIPC_SRC_USOCK, &self->fsm);
    sz = sizeof (reconnect_ivl);
    FUNC5 (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL, &reconnect_ivl, &sz);
    FUNC2 (sz == sizeof (reconnect_ivl));
    sz = sizeof (reconnect_ivl_max);
    FUNC5 (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL_MAX,
        &reconnect_ivl_max, &sz);
    FUNC2 (sz == sizeof (reconnect_ivl_max));
    if (reconnect_ivl_max == 0)
        reconnect_ivl_max = reconnect_ivl;
    FUNC3 (&self->retry, NN_CIPC_SRC_RECONNECT_TIMER,
        reconnect_ivl, reconnect_ivl_max, &self->fsm);
    FUNC9 (&self->sipc, NN_CIPC_SRC_SIPC, ep, &self->fsm);

    /*  Start the state machine. */
    FUNC8 (&self->fsm);

    return 0;
}