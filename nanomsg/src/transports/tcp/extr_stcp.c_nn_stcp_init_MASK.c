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
struct TYPE_2__ {int src; int /*<<< orphan*/ * fsm; } ;
struct nn_stcp {int instate; int outstate; int /*<<< orphan*/  done; int /*<<< orphan*/  outmsg; int /*<<< orphan*/  inmsg; int /*<<< orphan*/  pipebase; TYPE_1__ usock_owner; int /*<<< orphan*/ * usock; int /*<<< orphan*/  fsm; int /*<<< orphan*/  streamhdr; int /*<<< orphan*/  state; } ;
struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_STCP_SRC_STREAMHDR ; 
 int /*<<< orphan*/  NN_STCP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nn_stcp*,struct nn_fsm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nn_ep*) ; 
 int /*<<< orphan*/  nn_stcp_handler ; 
 int /*<<< orphan*/  nn_stcp_pipebase_vfptr ; 
 int /*<<< orphan*/  nn_stcp_shutdown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5 (struct nn_stcp *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    FUNC1 (&self->fsm, nn_stcp_handler, nn_stcp_shutdown,
        src, self, owner);
    self->state = NN_STCP_STATE_IDLE;
    FUNC4 (&self->streamhdr, NN_STCP_SRC_STREAMHDR, &self->fsm);
    self->usock = NULL;
    self->usock_owner.src = -1;
    self->usock_owner.fsm = NULL;
    FUNC3 (&self->pipebase, &nn_stcp_pipebase_vfptr, ep);
    self->instate = -1;
    FUNC2 (&self->inmsg, 0);
    self->outstate = -1;
    FUNC2 (&self->outmsg, 0);
    FUNC0 (&self->done);
}