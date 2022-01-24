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
 scalar_t__ FUNC0 (char const*) ; 

bool FUNC1(const char *c, int len) {
	if (len < 2) {
		return false;
	}
	int i = 0;
	for (; i < len; i++) {
		if (FUNC0 (c + i) && FUNC0 (c+ i + 1) &&
				c[i] == '0' && c[i + 1] == 'x') {
			return true;
		}
	}
	return false;
}