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
 int PORTB ; 
 int PORTC ; 
 int PORTD ; 
 int PORTF ; 

__attribute__((used)) static void FUNC0(void)
{
    PORTF &= 0b11111100;
    PORTC &= 0b00111111;
    PORTB &= 0b10001110;
    PORTD &= 0b01111111;
}