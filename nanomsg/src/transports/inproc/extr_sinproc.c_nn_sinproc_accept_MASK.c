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
struct nn_sinproc {int /*<<< orphan*/  fsm; int /*<<< orphan*/  event_connect; struct nn_sinproc* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SINPROC_ACTION_READY ; 
 int /*<<< orphan*/  NN_SINPROC_READY ; 
 int /*<<< orphan*/  NN_SINPROC_SRC_PEER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nn_sinproc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4 (struct nn_sinproc *self, struct nn_sinproc *peer)
{
    FUNC0 (!self->peer);
    self->peer = peer;

    /*  Start the connecting handshake with the peer. */
    FUNC2 (&self->fsm, &peer->fsm, &self->event_connect,
        NN_SINPROC_SRC_PEER, NN_SINPROC_READY, self);

    /*  Notify the state machine. */
    FUNC3 (&self->fsm);
    FUNC1 (&self->fsm, NN_SINPROC_ACTION_READY);
}