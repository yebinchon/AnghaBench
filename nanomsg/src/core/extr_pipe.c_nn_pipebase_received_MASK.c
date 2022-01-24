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
struct nn_pipebase {scalar_t__ instate; int /*<<< orphan*/  in; int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 scalar_t__ NN_PIPEBASE_INSTATE_ASYNC ; 
 scalar_t__ NN_PIPEBASE_INSTATE_IDLE ; 
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVED ; 
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVING ; 
 int /*<<< orphan*/  NN_PIPE_IN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3 (struct nn_pipebase *self)
{
    if (FUNC1 (self->instate == NN_PIPEBASE_INSTATE_RECEIVING)) {
        self->instate = NN_PIPEBASE_INSTATE_RECEIVED;
        return;
    }
    FUNC0 (self->instate == NN_PIPEBASE_INSTATE_ASYNC);
    self->instate = NN_PIPEBASE_INSTATE_IDLE;
    FUNC2 (&self->fsm, &self->in, NN_PIPE_IN);
}