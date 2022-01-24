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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

char * FUNC2(const char *str, size_t n) {
	size_t len;
	char *copy;

	for (len = 0; len < n && str[len]; len++) {}
	if (!(copy = FUNC0 (len + 1))) {
		return NULL;
	}
	(void)FUNC1 (copy, str, len);
	copy[len] = '\0';
	return copy;
}