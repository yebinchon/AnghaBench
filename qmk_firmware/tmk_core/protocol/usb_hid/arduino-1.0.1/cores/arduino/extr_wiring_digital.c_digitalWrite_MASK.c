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
 scalar_t__ LOW ; 
 scalar_t__ NOT_A_PIN ; 
 scalar_t__ NOT_ON_TIMER ; 
 scalar_t__ SREG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(uint8_t pin, uint8_t val)
{
	uint8_t timer = FUNC3(pin);
	uint8_t bit = FUNC1(pin);
	uint8_t port = FUNC2(pin);
	volatile uint8_t *out;

	if (port == NOT_A_PIN) return;

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) FUNC5(timer);

	out = FUNC4(port);

	uint8_t oldSREG = SREG;
	FUNC0();

	if (val == LOW) {
		*out &= ~bit;
	} else {
		*out |= bit;
	}

	SREG = oldSREG;
}