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
struct nn_bws {int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/ * aws; int /*<<< orphan*/  awss; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_BWS_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_bws*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_bws*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6 (void *self)
{
    struct nn_bws *bws = self;

    FUNC1 (bws, NN_BWS_STATE_IDLE);
    FUNC4 (&bws->awss);
    FUNC0 (bws->aws == NULL);
    FUNC5 (&bws->usock);
    FUNC3 (&bws->fsm);

    FUNC2 (bws);
}