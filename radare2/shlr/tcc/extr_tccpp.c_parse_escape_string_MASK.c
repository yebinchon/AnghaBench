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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  CString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  gnu_ext ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5(CString *outstr, const uint8_t *buf, int is_long)
{
	int c, n;
	const uint8_t *p;

	p = buf;
	for (;;) {
		c = *p;
		if (c == '\0') {
			break;
		}
		if (c == '\\') {
			p++;
			/* escape */
			c = *p;
			switch (c) {
			case '0': case '1': case '2': case '3':
			case '4': case '5': case '6': case '7':
				/* at most three octal digits */
				n = c - '0';
				p++;
				c = *p;
				if (FUNC3 (c)) {
					n = n * 8 + c - '0';
					p++;
					c = *p;
					if (FUNC3 (c)) {
						n = n * 8 + c - '0';
						p++;
					}
				}
				c = n;
				goto add_char_nonext;
			case 'x':
			case 'u':
			case 'U':
				p++;
				n = 0;
				for (;;) {
					c = *p;
					if (c >= 'a' && c <= 'f') {
						c = c - 'a' + 10;
					} else if (c >= 'A' && c <= 'F') {
						c = c - 'A' + 10;
					} else if (FUNC2 (c)) {
						c = c - '0';
					} else {
						break;
					}
					n = n * 16 + c;
					p++;
				}
				c = n;
				goto add_char_nonext;
			case 'a':
				c = '\a';
				break;
			case 'b':
				c = '\b';
				break;
			case 'f':
				c = '\f';
				break;
			case 'n':
				c = '\n';
				break;
			case 'r':
				c = '\r';
				break;
			case 't':
				c = '\t';
				break;
			case 'v':
				c = '\v';
				break;
			case 'e':
				if (!gnu_ext) {
					goto invalid_escape;
				}
				c = 27;
				break;
			case '\'':
			case '\"':
			case '\\':
			case '?':
				break;
			default:
invalid_escape:
				if (c >= '!' && c <= '~') {
					FUNC4 ("unknown escape sequence: \'\\%c\'", c);
				} else {
					FUNC4 ("unknown escape sequence: \'\\x%x\'", c);
				}
				break;
			}
		}
		p++;
add_char_nonext:
		if (!is_long) {
			FUNC0 (outstr, c);
		} else {
			FUNC1 (outstr, c);
		}
	}
	/* add a trailing '\0' */
	if (!is_long) {
		FUNC0 (outstr, '\0');
	} else {
		FUNC1 (outstr, '\0');
	}
}