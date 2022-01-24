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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PINMUX_2 133 
#define  PINMUX_3 132 
#define  PINMUX_4 131 
#define  PINMUX_ALT 130 
 scalar_t__ PINMUX_ALTERNATIVE_SEL ; 
 int PINMUX_BANK_MFA ; 
#define  PINMUX_DEBUG 129 
 scalar_t__ PINMUX_DEBUG_SEL ; 
#define  PINMUX_GPIO 128 
 scalar_t__ PINMUX_QUATERNARY_SEL ; 
 scalar_t__ PINMUX_SECONDARY_SEL ; 
 scalar_t__ PINMUX_TERTIARY_SEL ; 
 scalar_t__ SEC_CONTROL_BASE ; 
 scalar_t__ SYS_CONTROL_BASE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(int bank, int pin, int func)
{
	u32 reg;
	u32 base;
	/* TODO: check parameters */

	if (bank == PINMUX_BANK_MFA)
		base = SYS_CONTROL_BASE;
	else
		base = SEC_CONTROL_BASE;

	FUNC1(base + PINMUX_SECONDARY_SEL, FUNC0(pin));
	FUNC1(base + PINMUX_TERTIARY_SEL, FUNC0(pin));
	FUNC1(base + PINMUX_QUATERNARY_SEL, FUNC0(pin));
	FUNC1(base + PINMUX_DEBUG_SEL, FUNC0(pin));
	FUNC1(base + PINMUX_ALTERNATIVE_SEL, FUNC0(pin));

	switch (func) {
	case PINMUX_GPIO:
	default:
		return;
		break;
	case PINMUX_2:
		reg = base + PINMUX_SECONDARY_SEL;
		break;
	case PINMUX_3:
		reg = base + PINMUX_TERTIARY_SEL;
		break;
	case PINMUX_4:
		reg = base + PINMUX_QUATERNARY_SEL;
		break;
	case PINMUX_DEBUG:
		reg = base + PINMUX_DEBUG_SEL;
		break;
	case PINMUX_ALT:
		reg = base + PINMUX_ALTERNATIVE_SEL;
		break;
	}
	FUNC2(reg, FUNC0(pin));
}