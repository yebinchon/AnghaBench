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
struct switch_dev {int dummy; } ;
struct ip17xx_state {TYPE_1__* regs; scalar_t__ vlan_enabled; scalar_t__ router_mode; } ;
struct TYPE_2__ {int NUM_PORTS; int (* reset ) (struct ip17xx_state*) ;int /*<<< orphan*/  RESET_REG; int /*<<< orphan*/  RESET_VAL; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip17xx_state*,int /*<<< orphan*/ ) ; 
 struct ip17xx_state* FUNC2 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip17xx_state*) ; 
 int FUNC4 (struct ip17xx_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ip17xx_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ip17xx_state*) ; 

__attribute__((used)) static int FUNC8(struct switch_dev *dev)
{
	struct ip17xx_state *state = FUNC2(dev);
	int i, err;

	if (FUNC0(state->regs->RESET_REG)) {
		err = FUNC6(state, state->regs->RESET_REG, state->regs->RESET_VAL);
		if (err < 0)
			return err;
		err = FUNC1(state, state->regs->RESET_REG);

		/*
		 *  Data sheet specifies reset period to be 2 msec.
		 *  (I don't see any mention of the 2ms delay in the IP178C spec, only
		 *  in IP175C, but it can't hurt.)
		 */
		FUNC5(2);
	}

	/* reset switch ports */
	for (i = 0; i < state->regs->NUM_PORTS-1; i++) {
		err = FUNC4(state, i, MII_BMCR, BMCR_RESET);
		if (err < 0)
			return err;
	}

	state->router_mode = 0;
	state->vlan_enabled = 0;
	FUNC3(state);

	return state->regs->reset(state);
}