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
typedef  size_t uint8_t ;

/* Variables and functions */
 int DDRB ; 
 int DDRC ; 
 int DDRD ; 
 size_t MATRIX_ROWS ; 
 int PORTB ; 
 int PORTC ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC0 () ; 

void FUNC1(void) {
    /* Column output pins */ \
	DDRD  |=  0b01110111;    \
	/* Row input pins */     \
	DDRC  &= ~0b10000100;    \
	DDRB  &= ~0b01111110;    \
	PORTC |=  0b10000100;    \
	PORTB |=  0b01111110;

    for (uint8_t i=0; i < MATRIX_ROWS; i++)
        matrix[i] = matrix_debouncing[i] = 0;

    FUNC0();
}