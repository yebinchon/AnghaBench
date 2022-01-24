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
struct nn_atcp {int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/  stcp; int /*<<< orphan*/  accepted; int /*<<< orphan*/  done; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_ATCP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_atcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6 (struct nn_atcp *self)
{
    FUNC0 (self, NN_ATCP_STATE_IDLE);

    FUNC3 (&self->item);
    FUNC1 (&self->done);
    FUNC1 (&self->accepted);
    FUNC4 (&self->stcp);
    FUNC5 (&self->usock);
    FUNC2 (&self->fsm);
}