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
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static char *FUNC1(char *op) {
	if (!op) {
		return NULL;
	}
	bool ansi_found = false;
	char *p = op;
	const char *o = NULL;
	while (*p) {
		if (p[0] == 0x1b && p[1] == '[') {
			ansi_found = true;
			p += 2;
			for (; *p && *p != 'J' && *p != 'm' && *p != 'H'; p++) {
				;
			}
			if (*p) {
				p++;
				if (!*p) {
					break;
				}
			}
			o = p - 1;
		} else {
			bool isSpace = ansi_found;
			ansi_found = false;
			if (!isSpace) {
				isSpace = p == op;
				if (!isSpace && o) {
					isSpace = (*o == ' ' || *o == ',' || *o == '[');
				}
			}
			if (*p == '[') {
				p++;
				if (!*p) {
					break;
				}
				if (!FUNC0 (*p)) {
					char *t = p;
					for (; *t && *t != ']'; t++) {
						;
					}
					if (*t == ']') {
						continue;
					}
					p = t;
					if (!*p) {
						break;
					}
				}
			}
			if (isSpace && FUNC0 (*p)) {
				return p;
			}
			o = p++;
		}
	}
	return NULL;
}