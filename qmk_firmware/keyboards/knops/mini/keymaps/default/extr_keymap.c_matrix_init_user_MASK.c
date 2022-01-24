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
 int DDRB ; 
 int PORTB ; 
 int PORTC ; 
 int PORTD ; 
 int PORTE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void) {
	FUNC0();
	
	PORTB |= (1 << 7);
	DDRB &= ~(1<<7);
	
	PORTD |= (1<<7);
	PORTC |= (1<<6);
	PORTC |= (1<<7);
	PORTD |= (1<<4);
	PORTE |= (1<<6);
	PORTB |= (1<<4);
	PORTD |= (1<<6);
	
	FUNC1(0);
}