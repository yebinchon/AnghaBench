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
struct nn_fsm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_FSM_ACTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_fsm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC2 (struct nn_fsm *self, int type)
{
    FUNC0 (type > 0);
    FUNC1 (self, NN_FSM_ACTION, type, NULL);
}