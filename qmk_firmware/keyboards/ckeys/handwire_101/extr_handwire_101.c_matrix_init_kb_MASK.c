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
 int /*<<< orphan*/  FUNC0 () ; 

void FUNC1(void) {
	// put your keyboard start-up code here
	// runs once when the firmware starts up
	// Turn status LED on
	//DDRD |= (1<<6);
	//PORTD |= (1<<6);

	FUNC0();
}