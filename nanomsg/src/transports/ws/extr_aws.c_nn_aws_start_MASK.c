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
struct nn_usock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fsm; int /*<<< orphan*/  src; } ;
struct nn_aws {int /*<<< orphan*/  fsm; TYPE_1__ listener_owner; struct nn_usock* listener; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_AWS_SRC_LISTENER ; 
 int /*<<< orphan*/  NN_AWS_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_aws*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_usock*,TYPE_1__*) ; 

void FUNC3 (struct nn_aws *self, struct nn_usock *listener)
{
    FUNC0 (self, NN_AWS_STATE_IDLE);

    /*  Take ownership of the listener socket. */
    self->listener = listener;
    self->listener_owner.src = NN_AWS_SRC_LISTENER;
    self->listener_owner.fsm = &self->fsm;
    FUNC2 (listener, &self->listener_owner);

    /*  Start the state machine. */
    FUNC1 (&self->fsm);
}