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
 scalar_t__ FUNC2 (char const) ; 

__attribute__((used)) static unsigned int FUNC3(const char * start, const char * end)
{
	if (end - start <= 1 || !FUNC2(start[0])) {
		return 0;
	}

	if (FUNC0(start[1])) {
		return 2;
	} else if (end - start > 3 && FUNC1(start[1]) && FUNC2(start[2]) && FUNC1(start[3])) {
		return 4;
	}

	return 0;
}