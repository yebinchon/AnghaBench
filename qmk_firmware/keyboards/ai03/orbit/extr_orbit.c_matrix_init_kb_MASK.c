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
 int /*<<< orphan*/  B5 ; 
 int /*<<< orphan*/  B6 ; 
 int /*<<< orphan*/  C6 ; 
 int /*<<< orphan*/  C7 ; 
 int /*<<< orphan*/  F6 ; 
 int /*<<< orphan*/  F7 ; 
 scalar_t__ isLeftHand ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
	// put your keyboard start-up code here
	// runs once when the firmware starts up
	
	// Initialize indicator LEDs to output
	if (isLeftHand)
	{
		FUNC1(C6);
		FUNC1(B6);
		FUNC1(B5);
		//DDRC |= (1<<6);
		//DDRB |= (1<<6);
		//DDRB |= (1<<5);
	}
	else
	{
		FUNC1(F6);
		FUNC1(F7);
		FUNC1(C7);
		//DDRF |= (1<<6);
		//DDRF |= (1<<7);
		//DDRC |= (1<<7);
	}

	FUNC2(0);
	
	FUNC0();
}