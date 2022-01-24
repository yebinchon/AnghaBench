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
 int HIGH_ADDR_SHIFT ; 
 int FUNC0 () ; 

__attribute__((used)) static char *FUNC1(void)
{
	int bits = HIGH_ADDR_SHIFT + FUNC0() % (63 - HIGH_ADDR_SHIFT);

	return (char *) (1UL << bits);
}