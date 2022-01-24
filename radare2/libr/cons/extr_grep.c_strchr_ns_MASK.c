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
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 char* FUNC1 (char*,char const) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3 (char *s, const char ch) {
	char *p = FUNC1 (s, ch);
	if (p && p > s) {
		char *prev = p - 1;
		if (*prev == '\\') {
			FUNC0 (prev, p, FUNC2 (p) + 1);
			return FUNC3 (p, ch);
		}
	}
	return p;
}