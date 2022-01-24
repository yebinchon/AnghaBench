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
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(const char *path)
{
	const char *p = path;

	if (FUNC1(!p)) {
		return 0;
	}
	if (FUNC1(*p == '.') && *(p+1) == '.' && (!*(p+2) || FUNC0(*(p+2)))) {
		return 0;
	}
	while (*p) {
		if (FUNC0(*p)) {
			p++;
			if (FUNC1(*p == '.')) {
				p++;
				if (FUNC1(*p == '.')) {
					p++;
					if (FUNC1(!*p) || FUNC1(FUNC0(*p))) {
						return 0;
					}
				}
			}
		}
		p++;
	}
	return 1;
}