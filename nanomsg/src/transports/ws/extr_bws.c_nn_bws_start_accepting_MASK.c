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
struct nn_bws {int /*<<< orphan*/  usock; int /*<<< orphan*/ * aws; int /*<<< orphan*/  fsm; int /*<<< orphan*/  ep; } ;
struct nn_aws {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_BWS_SRC_AWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (struct nn_bws *self)
{
    FUNC2 (self->aws == NULL);

    /*  Allocate new aws state machine. */
    self->aws = FUNC1 (sizeof (struct nn_aws), "aws");
    FUNC0 (self->aws);
    FUNC3 (self->aws, NN_BWS_SRC_AWS, self->ep, &self->fsm);

    /*  Start waiting for a new incoming connection. */
    FUNC4 (self->aws, &self->usock);
}