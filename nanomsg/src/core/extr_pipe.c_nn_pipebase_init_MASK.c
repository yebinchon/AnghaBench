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
struct nn_pipebase_vfptr {int dummy; } ;
struct nn_pipebase {int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  options; TYPE_1__* sock; int /*<<< orphan*/  outstate; int /*<<< orphan*/  instate; int /*<<< orphan*/  state; struct nn_pipebase_vfptr const* vfptr; int /*<<< orphan*/  fsm; } ;
struct nn_ep_options {int dummy; } ;
struct nn_ep {int /*<<< orphan*/  options; TYPE_1__* sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_PIPEBASE_INSTATE_DEACTIVATED ; 
 int /*<<< orphan*/  NN_PIPEBASE_OUTSTATE_DEACTIVATED ; 
 int /*<<< orphan*/  NN_PIPEBASE_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nn_pipebase*,int /*<<< orphan*/ *) ; 

void FUNC4 (struct nn_pipebase *self,
    const struct nn_pipebase_vfptr *vfptr, struct nn_ep *ep)
{
    FUNC1 (ep->sock);

    FUNC3 (&self->fsm, NULL, NULL, 0, self, &ep->sock->fsm);
    self->vfptr = vfptr;
    self->state = NN_PIPEBASE_STATE_IDLE;
    self->instate = NN_PIPEBASE_INSTATE_DEACTIVATED;
    self->outstate = NN_PIPEBASE_OUTSTATE_DEACTIVATED;
    self->sock = ep->sock;
    FUNC0 (&self->options, &ep->options, sizeof (struct nn_ep_options));
    FUNC2 (&self->in);
    FUNC2 (&self->out);
}