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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(unsigned long esr, unsigned long address)
{
	FUNC1("Data abort exception, ESR:%x, fault address: %x\r\n", esr, address);
	FUNC1("terminating faulting process...\r\n");
	FUNC0();
}