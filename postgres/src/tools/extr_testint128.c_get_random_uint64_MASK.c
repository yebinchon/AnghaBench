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
typedef  int uint64 ;

/* Variables and functions */
 int FUNC0 () ; 

__attribute__((used)) static uint64
FUNC1(void)
{
	uint64		x;

	x = (uint64) (FUNC0() & 0xFFFF) << 48;
	x |= (uint64) (FUNC0() & 0xFFFF) << 32;
	x |= (uint64) (FUNC0() & 0xFFFF) << 16;
	x |= (uint64) (FUNC0() & 0xFFFF);
	return x;
}