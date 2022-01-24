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
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(char *s) {
	char *p = NULL;
	while (s && *s) {
		if (*s == ',') {
			p = s+1;
			*p=0;
		}
		if (*s == '[' || *s == ']') {
			FUNC0 (s, s + 1, FUNC1 (s + 1) + 1);
		}
		if (*s == '}') {
			*s = 0;
		}
		s++;
	}
	while (p && *p == ' ') {
		p++;
	}
	return p;
}