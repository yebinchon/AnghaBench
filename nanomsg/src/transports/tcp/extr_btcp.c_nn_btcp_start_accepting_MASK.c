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
struct nn_btcp {int /*<<< orphan*/  usock; int /*<<< orphan*/ * atcp; int /*<<< orphan*/  fsm; int /*<<< orphan*/  ep; } ;
struct nn_atcp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_BTCP_SRC_ATCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (struct nn_btcp *self)
{
    FUNC2 (self->atcp == NULL);

    /*  Allocate new atcp state machine. */
    self->atcp = FUNC1 (sizeof (struct nn_atcp), "atcp");
    FUNC0 (self->atcp);
    FUNC3 (self->atcp, NN_BTCP_SRC_ATCP, self->ep, &self->fsm);

    /*  Start waiting for a new incoming connection. */
    FUNC4 (self->atcp, &self->usock);
}