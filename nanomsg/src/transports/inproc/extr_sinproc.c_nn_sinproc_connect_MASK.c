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
struct nn_sinproc {int /*<<< orphan*/  event_connect; int /*<<< orphan*/  fsm; } ;
struct nn_fsm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SINPROC_CONNECT ; 
 int /*<<< orphan*/  NN_SINPROC_SRC_PEER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nn_fsm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nn_sinproc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (struct nn_sinproc *self, struct nn_fsm *peer)
{
    FUNC1 (&self->fsm);

    /*  Start the connecting handshake with the peer. */
    FUNC0 (&self->fsm, peer, &self->event_connect,
        NN_SINPROC_SRC_PEER, NN_SINPROC_CONNECT, self);
}