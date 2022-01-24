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
struct ip17xx_state {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  MODE_REG; int /*<<< orphan*/  MODE_VAL; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip17xx_state*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ip17xx_state*) ; 
 int FUNC3 (struct ip17xx_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ip17xx_state *state)
{
	int err;

	if (FUNC0(state->regs->MODE_REG)) {
		err = FUNC3(state, state->regs->MODE_REG, state->regs->MODE_VAL);
		if (err < 0)
			return err;
		err = FUNC1(state, state->regs->MODE_REG);
		if (err < 0)
			return err;
	}

	return FUNC2(state);
}