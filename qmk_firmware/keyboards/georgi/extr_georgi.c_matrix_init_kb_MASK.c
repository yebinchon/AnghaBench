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
 int DDRC ; 
 int DDRD ; 
 int DDRE ; 
 int PORTC ; 
 int PORTD ; 
 int PORTE ; 
 int /*<<< orphan*/  STENO_MODE_GEMINI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void) {
  	FUNC1(STENO_MODE_GEMINI); // or STENO_MODE_BOLT

    // (tied to Vcc for hardware convenience)
    //DDRB  &= ~(1<<4);  // set B(4) as input
    //PORTB &= ~(1<<4);  // set B(4) internal pull-up disabled

    // unused pins - C7, D4, D5, D7, E6
    // set as input with internal pull-up enabled
    DDRC  &= ~(1<<7);
    DDRD  &= ~(1<<5 | 1<<4 | 1<<6 | 1<<7);
    DDRE  &= ~(1<<6);
    PORTC |=  (1<<7);
    PORTD |=  (1<<5 | 1<<4 | 1<<6 | 1<<7);
    PORTE |=  (1<<6);

    FUNC0();
}