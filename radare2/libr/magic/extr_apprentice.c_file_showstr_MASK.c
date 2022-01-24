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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 

void FUNC2(FILE *fp, const char *s, size_t len) {
	for (;;) {
		char c = *s++;
		if (len == ~0U) {
			if (c == '\0') {
				break;
			}
		} else {
			if (len-- == 0) {
				break;
			}
		}
		if (c >= 040 && c <= 0176) { /* TODO isprint && !iscntrl */
			FUNC1 (c, fp);
		} else {
			FUNC1 ('\\', fp);
			switch (c) {
			case '\a': FUNC1('a', fp); break;
			case '\b': FUNC1('b', fp); break;
			case '\f': FUNC1('f', fp); break;
			case '\n': FUNC1('n', fp); break;
			case '\r': FUNC1('r', fp); break;
			case '\t': FUNC1('t', fp); break;
			case '\v': FUNC1('v', fp); break;
			default:   FUNC0(fp, "%.3o", c & 0377); break;
			}
		}
	}
}