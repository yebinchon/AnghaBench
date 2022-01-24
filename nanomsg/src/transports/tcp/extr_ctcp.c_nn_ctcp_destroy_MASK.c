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
struct nn_ctcp {int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/  retry; int /*<<< orphan*/  stcp; int /*<<< orphan*/  dns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_ctcp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6 (void *self)
{
    struct nn_ctcp *ctcp = self;

    FUNC1 (&ctcp->dns);
    FUNC4 (&ctcp->stcp);
    FUNC0 (&ctcp->retry);
    FUNC5 (&ctcp->usock);
    FUNC3 (&ctcp->fsm);

    FUNC2 (ctcp);
}