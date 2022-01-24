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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2(int layer) {
	switch(layer) {
			
			/**
			*   Here is an example to turn LEDs on and of. By default:
			*   - the LEDs are turned on in layer 0
			*   - the LEDs are turned off in layer 1
			*   - the LEDs don't change from state for layer 2
			*/			
			
		case 0:
			FUNC0(0); // Turn on only the first/left layer indicator
			FUNC1(1, true);
			FUNC1(2, true);
			FUNC1(3, true);
			FUNC1(4, true);
			FUNC1(5, true);
			FUNC1(6, true);
			break;
			
		case 1:
			FUNC0(1); // Turn on only the second/middle layer indicator
			FUNC1(1, false);
			FUNC1(2, false);
			FUNC1(3, false);
			FUNC1(4, false);
			FUNC1(5, false);
			FUNC1(6, false);
			break;
			
		case 2:
			FUNC0(2); // Turn on only the third/right layer indicator
			
			// Keep leds for layer two in their current state, since we don't use set_switch_led(SWITCH_ID, TRUE_OR_FALSE)
			
			break;
	}
}