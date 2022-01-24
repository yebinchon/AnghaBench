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
struct nn_stcp {int /*<<< orphan*/  fsm; int /*<<< orphan*/  streamhdr; int /*<<< orphan*/  pipebase; int /*<<< orphan*/  inmsg; int /*<<< orphan*/  outmsg; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_STCP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_stcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6 (struct nn_stcp *self)
{
    FUNC0 (self, NN_STCP_STATE_IDLE);

    FUNC1 (&self->done);
    FUNC3 (&self->outmsg);
    FUNC3 (&self->inmsg);
    FUNC4 (&self->pipebase);
    FUNC5 (&self->streamhdr);
    FUNC2 (&self->fsm);
}