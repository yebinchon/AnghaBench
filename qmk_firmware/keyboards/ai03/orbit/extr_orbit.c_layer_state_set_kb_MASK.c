#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {void* current_layer; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* current_layer ; 
 scalar_t__ isLeftHand ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ serial_m2s_buffer ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

uint32_t FUNC4(uint32_t state) {
	
	if (FUNC1())
	{
		
		current_layer = FUNC0(state);
		serial_m2s_buffer.current_layer = FUNC0(state);
		
		// If left half, do the LED toggle thing
		if (isLeftHand)
		{
			FUNC3(FUNC0(state));
		}
		
	}
	// NOTE: Do not set slave LEDs here.
	// This is not called on slave
	
	return FUNC2(state);
}