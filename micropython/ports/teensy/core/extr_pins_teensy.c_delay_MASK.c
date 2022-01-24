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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(uint32_t ms)
{
	uint32_t start = FUNC0();

	if (ms > 0) {
		while (1) {
			if ((FUNC0() - start) >= 1000) {
				ms--;
				if (ms == 0) return;
				start += 1000;
			}
			FUNC1();
		}
	}
}