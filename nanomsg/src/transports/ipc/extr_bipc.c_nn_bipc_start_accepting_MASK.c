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
struct nn_bipc {int /*<<< orphan*/  usock; int /*<<< orphan*/ * aipc; int /*<<< orphan*/  fsm; int /*<<< orphan*/  ep; } ;
struct nn_aipc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_BIPC_SRC_AIPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (struct nn_bipc *self)
{
    FUNC4 (self->aipc == NULL);

    /*  Allocate new aipc state machine. */
    self->aipc = FUNC3 (sizeof (struct nn_aipc), "aipc");
    FUNC0 (self->aipc);
    FUNC1 (self->aipc, NN_BIPC_SRC_AIPC, self->ep, &self->fsm);

    /*  Start waiting for a new incoming connection. */
    FUNC2 (self->aipc, &self->usock);
}