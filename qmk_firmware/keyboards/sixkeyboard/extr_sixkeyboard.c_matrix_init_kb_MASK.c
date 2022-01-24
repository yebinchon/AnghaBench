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
 int DDRC ; 
 int DDRD ; 
 int PORTB ; 
 int PORTC ; 
 int PORTD ; 
 int /*<<< orphan*/  FUNC0 () ; 

void FUNC1(void) {
    // put your keyboard start-up code here
    // runs once when the firmware starts up

    DDRC |= (1<<4);
    PORTC &= ~(1<<4);


    DDRC |= (1<<6);
    PORTC &= ~(1<<6);

    DDRB |= (1<<6);
    PORTB &= ~(1<<6);

    DDRB |= (1<<4);
    PORTB &= ~(1<<4);

    DDRD |= (1<<5);
    PORTD &= ~(1<<5);

    DDRD |= (1<<2);
    PORTD &= ~(1<<2);

    DDRD |= (1<<3);
    PORTD &= ~(1<<3);

    FUNC0();
}