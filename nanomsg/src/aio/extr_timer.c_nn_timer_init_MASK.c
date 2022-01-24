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
struct nn_timer {int timeout; int /*<<< orphan*/  fsm; int /*<<< orphan*/  worker; int /*<<< orphan*/  done; int /*<<< orphan*/  wtimer; int /*<<< orphan*/  stop_task; int /*<<< orphan*/  start_task; int /*<<< orphan*/  state; } ;
struct nn_fsm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_TIMER_SRC_START_TASK ; 
 int /*<<< orphan*/  NN_TIMER_SRC_STOP_TASK ; 
 int /*<<< orphan*/  NN_TIMER_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nn_timer*,struct nn_fsm*) ; 
 int /*<<< orphan*/  nn_timer_handler ; 
 int /*<<< orphan*/  nn_timer_shutdown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5 (struct nn_timer *self, int src, struct nn_fsm *owner)
{
    FUNC2 (&self->fsm, nn_timer_handler, nn_timer_shutdown,
        src, self, owner);
    self->state = NN_TIMER_STATE_IDLE;
    FUNC3 (&self->start_task, NN_TIMER_SRC_START_TASK,
        &self->fsm);
    FUNC3 (&self->stop_task, NN_TIMER_SRC_STOP_TASK, &self->fsm);
    FUNC4 (&self->wtimer, &self->fsm);
    FUNC1 (&self->done);
    self->worker = FUNC0 (&self->fsm);
    self->timeout = -1;
}