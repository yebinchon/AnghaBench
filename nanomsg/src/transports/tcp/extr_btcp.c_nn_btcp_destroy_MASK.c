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
struct nn_btcp {int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/ * atcp; int /*<<< orphan*/  atcps; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_BTCP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_btcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_btcp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6 (void *self)
{
    struct nn_btcp *btcp = self;

    FUNC1 (btcp, NN_BTCP_STATE_IDLE);
    FUNC4 (&btcp->atcps);
    FUNC0 (btcp->atcp == NULL);
    FUNC5 (&btcp->usock);
    FUNC3 (&btcp->fsm);

    FUNC2 (btcp);
}