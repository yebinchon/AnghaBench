#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nn_sockbase_vfptr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  reply; int /*<<< orphan*/  request; int /*<<< orphan*/ * sent_to; } ;
struct TYPE_3__ {int /*<<< orphan*/  sockbase; } ;
struct nn_req {int /*<<< orphan*/  fsm; int /*<<< orphan*/  lastid; TYPE_2__ task; int /*<<< orphan*/  resend_ivl; int /*<<< orphan*/  state; TYPE_1__ xreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_REQ_DEFAULT_RESEND_IVL ; 
 int /*<<< orphan*/  NN_REQ_SRC_RESEND_TIMER ; 
 int /*<<< orphan*/  NN_REQ_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nn_req_handler ; 
 int /*<<< orphan*/  nn_req_shutdown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct nn_sockbase_vfptr const*,void*) ; 

void FUNC8 (struct nn_req *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    FUNC7 (&self->xreq, vfptr, hint);
    FUNC0 (&self->fsm, nn_req_handler, nn_req_shutdown,
        FUNC4 (&self->xreq.sockbase));
    self->state = NN_REQ_STATE_IDLE;

    /*  Start assigning request IDs beginning with a random number. This way
        there should be no key clashes even if the executable is re-started. */
    FUNC3 (&self->lastid, sizeof (self->lastid));

    self->task.sent_to = NULL;

    FUNC2 (&self->task.request, 0);
    FUNC2 (&self->task.reply, 0);
    FUNC6 (&self->task.timer, NN_REQ_SRC_RESEND_TIMER, &self->fsm);
    self->resend_ivl = NN_REQ_DEFAULT_RESEND_IVL;

    FUNC5 (&self->task, self->lastid);

    /*  Start the state machine. */
    FUNC1 (&self->fsm);
}