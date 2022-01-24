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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 

int FUNC4(const char *src, int *pid, int *tid, bool multiprocess) {
	char *ptr1;
	if (multiprocess && *src == 'p') {
		src++;
		if (!(ptr1 = FUNC2 (src, '.'))) {
			return -1;
		}
		ptr1++;
		if (FUNC1 (src, "-1")) {
			if (FUNC1 (ptr1, "-1")) {
				*pid = *tid = -1;
				return 0;
			}
			return -1;
		}
		if (!FUNC0 (*src)) {
			return -1;
		}
		if (FUNC1 (ptr1, "-1")) {
			*pid = (int) FUNC3 (src, NULL, 16);
			*tid = -1;
			return 0;
		}
		if (!FUNC0 (*ptr1)) {
			return -1;
		}
		*pid = (int) FUNC3 (src, NULL, 16);
		*tid = (int) FUNC3 (ptr1, NULL, 16);
		return 0;
	}
	if (FUNC1 (src, "-1")) {
		*tid = -1;
		return 0;
	}
	if (!FUNC0 (*src)) {
		return -1;
	}
	*pid = *tid = (int) FUNC3 (src, NULL, 16);
	return 0;
}