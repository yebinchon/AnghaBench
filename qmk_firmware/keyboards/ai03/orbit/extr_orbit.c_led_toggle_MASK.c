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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(int id, bool on) {
	
	if (isLeftHand) {
		switch(id) {
			case 0:
				// Left hand C6
				if (on)
					//PORTC |= (1<<6);
					FUNC0(C6);
				else
					//PORTC &= ~(1<<6);
					FUNC1(C6);
				break;
			case 1:
				// Left hand B6
				if (on)
					//PORTB |= (1<<6);
					FUNC0(B6);
				else
					//PORTB &= ~(1<<6);
					FUNC1(B6);
				break;
			case 2:
				// Left hand B5
				if (on)
					//PORTB |= (1<<5);
					FUNC0(B5);
				else
					//PORTB &= ~(1<<5);
					FUNC1(B5);
				break;
			default:
				break;
		}
	} else {
		switch(id) {
			case 3:
				// Right hand F6
				if (on)
					//PORTF |= (1<<6);
					FUNC0(F6);
				else
					//PORTF &= ~(1<<6);
					FUNC1(F6);
				break;
			case 4:
				// Right hand F7
				if (on)
					//PORTF |= (1<<7);
					FUNC0(F7);
				else
					//PORTF &= ~(1<<7);
					FUNC1(F7);
				break;
			case 5:
				// Right hand C7
				if (on)
					//PORTC |= (1<<7);
					FUNC0(C7);
				else
					//PORTC &= ~(1<<7);
					FUNC1(C7);
				break;
			default:
				break;
		}
	}
}