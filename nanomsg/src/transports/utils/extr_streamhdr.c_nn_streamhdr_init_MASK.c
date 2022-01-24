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
struct nn_streamhdr {int /*<<< orphan*/ * pipebase; TYPE_1__ usock_owner; int /*<<< orphan*/ * usock; int /*<<< orphan*/  done; int /*<<< orphan*/  fsm; int /*<<< orphan*/  timer; int /*<<< orphan*/  state; } ;
struct nn_fsm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_STREAMHDR_SRC_TIMER ; 
 int /*<<< orphan*/  NN_STREAMHDR_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nn_streamhdr*,struct nn_fsm*) ; 
 int /*<<< orphan*/  nn_streamhdr_handler ; 
 int /*<<< orphan*/  nn_streamhdr_shutdown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3 (struct nn_streamhdr *self, int src,
    struct nn_fsm *owner)
{
    FUNC1 (&self->fsm, nn_streamhdr_handler, nn_streamhdr_shutdown,
        src, self, owner);
    self->state = NN_STREAMHDR_STATE_IDLE;
    FUNC2 (&self->timer, NN_STREAMHDR_SRC_TIMER, &self->fsm);
    FUNC0 (&self->done);

    self->usock = NULL;
    self->usock_owner.src = -1;
    self->usock_owner.fsm = NULL;
    self->pipebase = NULL;
}