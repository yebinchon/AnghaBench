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
struct TYPE_2__ {scalar_t__ batch; } ;
struct nn_usock {int /*<<< orphan*/  fsm; int /*<<< orphan*/  wfd; int /*<<< orphan*/  task_connecting; int /*<<< orphan*/  task_connected; int /*<<< orphan*/  task_accept; int /*<<< orphan*/  task_send; int /*<<< orphan*/  task_recv; int /*<<< orphan*/  task_stop; int /*<<< orphan*/  worker; int /*<<< orphan*/  event_established; int /*<<< orphan*/  event_sent; int /*<<< orphan*/  event_received; int /*<<< orphan*/  event_error; TYPE_1__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_USOCK_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_usock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7 (struct nn_usock *self)
{
    FUNC0 (self, NN_USOCK_STATE_IDLE);

    if (self->in.batch)
        FUNC1 (self->in.batch);

    FUNC2 (&self->event_error);
    FUNC2 (&self->event_received);
    FUNC2 (&self->event_sent);
    FUNC2 (&self->event_established);

    FUNC4 (self->worker, &self->task_stop);
    FUNC4 (self->worker, &self->task_recv);
    FUNC4 (self->worker, &self->task_send);
    FUNC4 (self->worker, &self->task_accept);
    FUNC4 (self->worker, &self->task_connected);
    FUNC4 (self->worker, &self->task_connecting);

    FUNC6 (&self->task_stop);
    FUNC6 (&self->task_recv);
    FUNC6 (&self->task_send);
    FUNC6 (&self->task_accept);
    FUNC6 (&self->task_connected);
    FUNC6 (&self->task_connecting);
    FUNC5 (&self->wfd);

    FUNC3 (&self->fsm);
}