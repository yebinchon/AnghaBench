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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(int c)
{
	int idx;

	idx = FUNC2(0xfa, 0x40) + c;
	if (idx >= FUNC2(0xfa, 0x5c))
		idx -=  FUNC2(0xfa, 0x5c) - FUNC2(0xed, 0x40);
	else if (idx >= FUNC2(0xfa, 0x55))
		idx -=  FUNC2(0xfa, 0x55) - FUNC2(0xee, 0xfa);
	else if (idx >= FUNC2(0xfa, 0x40))
		idx -=  FUNC2(0xfa, 0x40) - FUNC2(0xee, 0xef);
	return FUNC0(idx) << 8 | FUNC1(idx);
}