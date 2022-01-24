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
 char* FUNC0 (char*,char) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char const*) ; 

__attribute__((used)) static char *FUNC4(const char *dn, const char *cn) {
	if (!dn || !cn) {
		return NULL;
	}

	char *p = FUNC3 (dn, ".getter_");
	if (!p) {
		p = FUNC3 (dn, ".setter_");
		if (!p) {
			p = FUNC3 (dn, ".method_");
		}
	}
	if (p) {
		char *q = FUNC3 (dn, cn);
		if (q && q[FUNC2 (cn)] == '.') {
			q = FUNC1 (q + FUNC2 (cn) + 1);
			char *r = FUNC0 (q, '.');
			if (r) {
				*r = 0;
			}
			return q;
		}
	}
	return NULL;
}