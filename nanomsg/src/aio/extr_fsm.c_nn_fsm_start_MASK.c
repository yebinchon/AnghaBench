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
struct nn_fsm {int /*<<< orphan*/  state; int /*<<< orphan*/  (* fn ) (struct nn_fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NN_FSM_ACTION ; 
 int /*<<< orphan*/  NN_FSM_START ; 
 int /*<<< orphan*/  NN_FSM_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_fsm*) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3 (struct nn_fsm *self)
{
    FUNC0 (FUNC1 (self));
    self->fn (self, NN_FSM_ACTION, NN_FSM_START, NULL);
    self->state = NN_FSM_STATE_ACTIVE;
}