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

void
FUNC2(FILE *fp, const char *s, size_t len)
{
	char	c;

	for (;;) {
		if (len == ~0U) {
			c = *s++;
			if (c == '\0')
				break;
		}
		else  {
			if (len-- == 0)
				break;
			c = *s++;
		}
		if (c >= 040 && c <= 0176)	/* TODO isprint && !iscntrl */
			(void) FUNC1(c, fp);
		else {
			(void) FUNC1('\\', fp);
			switch (c) {
			case '\a':
				(void) FUNC1('a', fp);
				break;

			case '\b':
				(void) FUNC1('b', fp);
				break;

			case '\f':
				(void) FUNC1('f', fp);
				break;

			case '\n':
				(void) FUNC1('n', fp);
				break;

			case '\r':
				(void) FUNC1('r', fp);
				break;

			case '\t':
				(void) FUNC1('t', fp);
				break;

			case '\v':
				(void) FUNC1('v', fp);
				break;

			default:
				(void) FUNC0(fp, "%.3o", c & 0377);
				break;
			}
		}
	}
}