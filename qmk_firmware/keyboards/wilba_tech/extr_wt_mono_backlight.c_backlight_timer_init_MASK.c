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
 int /*<<< orphan*/  CS30 ; 
 int /*<<< orphan*/  CS32 ; 
 int OCR3AH ; 
 int OCR3AL ; 
 int SREG ; 
 int TCCR3B ; 
 int TIMER3_TOP ; 
 int /*<<< orphan*/  WGM32 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
	static uint8_t backlight_timer_is_init = 0;
	if ( backlight_timer_is_init ) {
		return;
	}
	backlight_timer_is_init = 1;

	// Timer 3 setup
	TCCR3B = FUNC0(WGM32) | 			// CTC mode OCR3A as TOP
			 FUNC0(CS32) | FUNC0(CS30); // prescale by /1024
	// Set TOP value
	uint8_t sreg = SREG;
	FUNC1();

	OCR3AH = (TIMER3_TOP >> 8) & 0xff;
	OCR3AL = TIMER3_TOP & 0xff;
	SREG = sreg;
}