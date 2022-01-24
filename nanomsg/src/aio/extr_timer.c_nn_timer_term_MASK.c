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
struct nn_timer {int /*<<< orphan*/  fsm; int /*<<< orphan*/  start_task; int /*<<< orphan*/  stop_task; int /*<<< orphan*/  wtimer; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_TIMER_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (struct nn_timer *self)
{
    FUNC0 (self, NN_TIMER_STATE_IDLE);

    FUNC1 (&self->done);
    FUNC4 (&self->wtimer);
    FUNC3 (&self->stop_task);
    FUNC3 (&self->start_task);
    FUNC2 (&self->fsm);
}