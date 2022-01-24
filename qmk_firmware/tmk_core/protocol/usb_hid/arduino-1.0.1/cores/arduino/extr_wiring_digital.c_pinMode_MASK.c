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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ INPUT ; 
 scalar_t__ INPUT_PULLUP ; 
 scalar_t__ NOT_A_PIN ; 
 scalar_t__ SREG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__* FUNC3 (scalar_t__) ; 
 scalar_t__* FUNC4 (scalar_t__) ; 

void FUNC5(uint8_t pin, uint8_t mode)
{
	uint8_t bit = FUNC1(pin);
	uint8_t port = FUNC2(pin);
	volatile uint8_t *reg, *out;

	if (port == NOT_A_PIN) return;

	// JWS: can I let the optimizer do this?
	reg = FUNC3(port);
	out = FUNC4(port);

	if (mode == INPUT) { 
		uint8_t oldSREG = SREG;
                FUNC0();
		*reg &= ~bit;
		*out &= ~bit;
		SREG = oldSREG;
	} else if (mode == INPUT_PULLUP) {
		uint8_t oldSREG = SREG;
                FUNC0();
		*reg &= ~bit;
		*out |= bit;
		SREG = oldSREG;
	} else {
		uint8_t oldSREG = SREG;
                FUNC0();
		*reg |= bit;
		SREG = oldSREG;
	}
}