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
struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;
struct TYPE_2__ {int src; int /*<<< orphan*/ * fsm; } ;
struct nn_aipc {int /*<<< orphan*/  item; int /*<<< orphan*/  done; int /*<<< orphan*/  accepted; int /*<<< orphan*/  fsm; int /*<<< orphan*/  sipc; TYPE_1__ listener_owner; int /*<<< orphan*/ * listener; int /*<<< orphan*/  usock; struct nn_ep* ep; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_AIPC_SRC_SIPC ; 
 int /*<<< orphan*/  NN_AIPC_SRC_USOCK ; 
 int /*<<< orphan*/  NN_AIPC_STATE_IDLE ; 
 int /*<<< orphan*/  nn_aipc_handler ; 
 int /*<<< orphan*/  nn_aipc_shutdown ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nn_aipc*,struct nn_fsm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nn_ep*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5 (struct nn_aipc *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    FUNC1 (&self->fsm, nn_aipc_handler, nn_aipc_shutdown,
        src, self, owner);
    self->state = NN_AIPC_STATE_IDLE;
    self->ep = ep;
    FUNC4 (&self->usock, NN_AIPC_SRC_USOCK, &self->fsm);
    self->listener = NULL;
    self->listener_owner.src = -1;
    self->listener_owner.fsm = NULL;
    FUNC3 (&self->sipc, NN_AIPC_SRC_SIPC, ep, &self->fsm);
    FUNC0 (&self->accepted);
    FUNC0 (&self->done);
    FUNC2 (&self->item);
}