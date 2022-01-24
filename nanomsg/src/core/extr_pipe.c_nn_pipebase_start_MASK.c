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
struct nn_pipebase {int /*<<< orphan*/  out; int /*<<< orphan*/  fsm; int /*<<< orphan*/  state; int /*<<< orphan*/  sock; int /*<<< orphan*/  outstate; int /*<<< orphan*/  instate; } ;
struct nn_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_PIPEBASE_INSTATE_ASYNC ; 
 int /*<<< orphan*/  NN_PIPEBASE_OUTSTATE_IDLE ; 
 int /*<<< orphan*/  NN_PIPEBASE_STATE_ACTIVE ; 
 int /*<<< orphan*/  NN_PIPEBASE_STATE_FAILED ; 
 int /*<<< orphan*/  NN_PIPEBASE_STATE_IDLE ; 
 int /*<<< orphan*/  NN_PIPE_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct nn_pipebase*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nn_pipe*) ; 

int FUNC4 (struct nn_pipebase *self)
{
    int rc;

    FUNC0 (self, NN_PIPEBASE_STATE_IDLE);

    self->state = NN_PIPEBASE_STATE_ACTIVE;
    self->instate = NN_PIPEBASE_INSTATE_ASYNC;
    self->outstate = NN_PIPEBASE_OUTSTATE_IDLE;
    rc = FUNC3 (self->sock, (struct nn_pipe*) self);
    if (FUNC2 (rc < 0)) {
        self->state = NN_PIPEBASE_STATE_FAILED;
        return rc;
    }
    FUNC1 (&self->fsm, &self->out, NN_PIPE_OUT);

    return 0;
}