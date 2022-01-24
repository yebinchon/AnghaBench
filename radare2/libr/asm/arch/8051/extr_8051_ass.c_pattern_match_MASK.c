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

__attribute__((used)) static bool FUNC2(char const*str, char const*pattern) {
	int si = 0;
	int ti = 0;
	if (!pattern) {
		return true;
	}

	while (pattern[ti] != '\0') {
		while (FUNC0 (str[si]) && !FUNC0 (pattern[ti])) {
			si += 1;
		}
		if (FUNC0 (pattern[ti])) {
			ti += 1;
			continue;
		}
		if (FUNC1 (pattern[ti]) == FUNC1 (str[si])) {
			si += 1;
			ti += 1;
		}
		else {
			return false;
		}
	}
	return true;
}