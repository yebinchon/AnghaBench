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
struct TYPE_4__ {struct nn_pipe* sent_to; int /*<<< orphan*/  timer; int /*<<< orphan*/  request; } ;
struct TYPE_3__ {int /*<<< orphan*/  sockbase; } ;
struct nn_req {int /*<<< orphan*/  state; TYPE_2__ task; int /*<<< orphan*/  resend_ivl; TYPE_1__ xreq; } ;
struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  NN_REQ_STATE_ACTIVE ; 
 int /*<<< orphan*/  NN_REQ_STATE_DELAYED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_msg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_msg*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct nn_msg*,struct nn_pipe**) ; 

void FUNC8 (struct nn_req *self, int allow_delay)
{
    int rc;
    struct nn_msg msg;
    struct nn_pipe *to;

    /*  Send the request. */
    FUNC3 (&msg, &self->task.request);
    rc = FUNC7 (&self->xreq.sockbase, &msg, &to);

    /*  If the request cannot be sent at the moment wait till
        new outbound pipe arrives. */
    if (FUNC5 (rc == -EAGAIN)) {
        FUNC1 (allow_delay == 1);
        FUNC4 (&msg);
        self->state = NN_REQ_STATE_DELAYED;
        return;
    }

    /*  Request was successfully sent. Set up the re-send timer
        in case the request gets lost somewhere further out
        in the topology. */
    if (FUNC2 (rc == 0)) {
        FUNC6 (&self->task.timer, self->resend_ivl);
        FUNC1 (to);
        self->task.sent_to = to;
        self->state = NN_REQ_STATE_ACTIVE;
        return;
    }

    /*  Unexpected error. */
    FUNC0 (0, -rc);
}