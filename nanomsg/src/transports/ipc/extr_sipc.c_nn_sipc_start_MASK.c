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
struct nn_sipc {int /*<<< orphan*/  fsm; struct nn_usock* usock; TYPE_1__ usock_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SIPC_SRC_USOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_usock*,TYPE_1__*) ; 

void FUNC3 (struct nn_sipc *self, struct nn_usock *usock)
{
    /*  Take ownership of the underlying socket. */
    FUNC0 (self->usock == NULL && self->usock_owner.fsm == NULL);
    self->usock_owner.src = NN_SIPC_SRC_USOCK;
    self->usock_owner.fsm = &self->fsm;
    FUNC2 (usock, &self->usock_owner);
    self->usock = usock;

    /*  Launch the state machine. */
    FUNC1 (&self->fsm);
}