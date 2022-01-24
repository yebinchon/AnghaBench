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
struct nn_sinproc {int /*<<< orphan*/  item; int /*<<< orphan*/  event_disconnect; int /*<<< orphan*/  event_received; int /*<<< orphan*/  event_sent; int /*<<< orphan*/  event_connect; int /*<<< orphan*/  msg; int /*<<< orphan*/  msgqueue; int /*<<< orphan*/  pipebase; int /*<<< orphan*/ * peer; scalar_t__ flags; int /*<<< orphan*/  state; int /*<<< orphan*/  fsm; } ;
struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;
typedef  int /*<<< orphan*/  rcvbuf ;

/* Variables and functions */
 int /*<<< orphan*/  NN_RCVBUF ; 
 int /*<<< orphan*/  NN_SINPROC_STATE_IDLE ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nn_sinproc*,struct nn_fsm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nn_ep*) ; 
 int /*<<< orphan*/  nn_sinproc_handler ; 
 int /*<<< orphan*/  nn_sinproc_pipebase_vfptr ; 
 int /*<<< orphan*/  nn_sinproc_shutdown ; 

void FUNC8 (struct nn_sinproc *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    int rcvbuf;
    size_t sz;

    FUNC3 (&self->fsm, nn_sinproc_handler, nn_sinproc_shutdown,
        src, self, owner);
    self->state = NN_SINPROC_STATE_IDLE;
    self->flags = 0;
    self->peer = NULL;
    FUNC7 (&self->pipebase, &nn_sinproc_pipebase_vfptr, ep);
    sz = sizeof (rcvbuf);
    FUNC1 (ep, NN_SOL_SOCKET, NN_RCVBUF, &rcvbuf, &sz);
    FUNC0 (sz == sizeof (rcvbuf));
    FUNC6 (&self->msgqueue, rcvbuf);
    FUNC5 (&self->msg, 0);
    FUNC2 (&self->event_connect);
    FUNC2 (&self->event_sent);
    FUNC2 (&self->event_received);
    FUNC2 (&self->event_disconnect);
    FUNC4 (&self->item);
}