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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ CORE_NUM_DIGITAL ; 
 scalar_t__ INPUT ; 
 scalar_t__ OUTPUT ; 
 int PORT_PCR_DSE ; 
 int FUNC0 (int) ; 
 int PORT_PCR_PE ; 
 int PORT_PCR_PS ; 
 int PORT_PCR_SRE ; 
 int* FUNC1 (scalar_t__) ; 
 int* FUNC2 (scalar_t__) ; 

void FUNC3(uint8_t pin, uint8_t mode)
{
	volatile uint32_t *config;

	if (pin >= CORE_NUM_DIGITAL) return;
	config = FUNC1(pin);

	if (mode == OUTPUT) {
		*FUNC2(pin) = 1;
		*config = PORT_PCR_SRE | PORT_PCR_DSE | FUNC0(1);
	} else {
		*FUNC2(pin) = 0;
		if (mode == INPUT) {
			*config = FUNC0(1);
		} else {
			*config = FUNC0(1) | PORT_PCR_PE | PORT_PCR_PS; // pullup
		}
	}
}