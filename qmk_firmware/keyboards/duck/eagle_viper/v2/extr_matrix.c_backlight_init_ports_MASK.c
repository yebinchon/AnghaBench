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
 int DDRD ; 
 int DDRE ; 
 int PORTB ; 
 int PORTD ; 
 int PORTE ; 

void FUNC0(void)
{
  DDRD  |=  0b11010000;
  PORTD &= ~0b01010000;
  PORTD |=  0b10000000;
  DDRB  |=  0b00011111;
  PORTB &= ~0b00001110;
  PORTB |=  0b00010001;
  DDRE  |=  0b01000000;
  PORTE &= ~0b01000000;
}