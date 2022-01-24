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
typedef  int uint8_t ;

/* Variables and functions */
 int DDRB ; 
 int DDRF ; 
 int PB1 ; 
 int PB2 ; 
 int PF4 ; 
 int PF5 ; 
 int PF6 ; 
 int PF7 ; 
 int PORTB ; 
 int PORTF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(uint8_t row)
{
  // Pro Micro
  switch (row) {
  case 0:
    DDRF  |=  (1<<PF4);
    PORTF &= ~(1<<PF4);
    break;
  case 1:
    DDRF  |=  (1<<PF5);
    PORTF &= ~(1<<PF5);
    break;
  case 2:
    DDRF  |=  (1<<PF6);
    PORTF &= ~(1<<PF6);
    break;
  case 3:
    DDRF  |=  (1<<PF7);
    PORTF &= ~(1<<PF7);
    break;
  case 4:
    DDRB  |=  (1<<PB1);
    PORTB &= ~(1<<PB1);
    break;
  case 5:
    DDRB  |=  (1<<PB2);
    PORTB &= ~(1<<PB2);
    break;
  }

  FUNC0(row);
}