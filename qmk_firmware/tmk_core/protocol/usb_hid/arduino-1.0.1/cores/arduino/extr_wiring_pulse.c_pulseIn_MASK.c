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
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (unsigned long) ; 
 int* FUNC4 (int) ; 

unsigned long FUNC5(uint8_t pin, uint8_t state, unsigned long timeout)
{
	// cache the port and bit of the pin in order to speed up the
	// pulse width measuring loop and achieve finer resolution.  calling
	// digitalRead() instead yields much coarser resolution.
	uint8_t bit = FUNC1(pin);
	uint8_t port = FUNC2(pin);
	uint8_t stateMask = (state ? bit : 0);
	unsigned long width = 0; // keep initialization out of time critical area
	
	// convert the timeout from microseconds to a number of times through
	// the initial loop; it takes 16 clock cycles per iteration.
	unsigned long numloops = 0;
	unsigned long maxloops = FUNC3(timeout) / 16;
	
	// wait for any previous pulse to end
	while ((*FUNC4(port) & bit) == stateMask)
		if (numloops++ == maxloops)
			return 0;
	
	// wait for the pulse to start
	while ((*FUNC4(port) & bit) != stateMask)
		if (numloops++ == maxloops)
			return 0;
	
	// wait for the pulse to stop
	while ((*FUNC4(port) & bit) == stateMask) {
		if (numloops++ == maxloops)
			return 0;
		width++;
	}

	// convert the reading to microseconds. The loop has been determined
	// to be 20 clock cycles long and have about 16 clocks between the edge
	// and the start of the loop. There will be some error introduced by
	// the interrupt handlers.
	return FUNC0(width * 21 + 16); 
}