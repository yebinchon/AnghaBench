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
 char* FUNC0 (char*,size_t) ; 
 scalar_t__ FUNC1 (char*,char) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(const char *str)
{
	char *val;
	size_t l;

	if (!str) {
		return NULL;
	}
	val = (char*)str;
	while (*val && FUNC1(" \t\r\n", *val)) {
		val++;
	}
	l = FUNC2(val);
	while (l && (FUNC1(" \t\r\n", val[l-1]))) {
		l--;
	}
	return FUNC0(val, l);
}