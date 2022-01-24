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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 

__attribute__((used)) static unsigned int FUNC2(const char * const start, const char * const end)
{
	if (start + 2 > end) {
		return 0;
	}

	if (FUNC0(*start)) {
		return (start + 4 <= end) && FUNC1(start[2]) ? 4 : 0;
	}

	if (FUNC1(*start)) {
		return 0;
	}
	return 2;
}