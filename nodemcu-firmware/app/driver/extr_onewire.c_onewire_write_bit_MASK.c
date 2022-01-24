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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(uint8_t pin, uint8_t v, uint8_t power)
{
	if (v & 1) {
		FUNC5();
		FUNC2(pin);
		FUNC3(5);
		if (power) {
			FUNC1(pin);
		} else {
			FUNC0(pin);	// drive output high by the pull-up
		}
		FUNC3(8);
		FUNC4();
		FUNC3(52);
	} else {
		FUNC5();
		FUNC2(pin);
		FUNC3(65);
		if (power) {
			FUNC1(pin);
		} else {
			FUNC0(pin);	// drive output high by the pull-up
		}
		FUNC4();
		FUNC3(5);
	}
}