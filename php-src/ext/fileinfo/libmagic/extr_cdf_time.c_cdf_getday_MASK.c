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
 size_t FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int) ; 
 int* mdays ; 

__attribute__((used)) static int
FUNC2(int year, int days)
{
	size_t m;

	for (m = 0; m < FUNC0(mdays); m++) {
		int sub = mdays[m] + (m == 1 && FUNC1(year));
		if (days < sub)
			return days;
		days -= sub;
	}
	return days;
}