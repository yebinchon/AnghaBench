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
typedef  int /*<<< orphan*/  buf ;
typedef  int UChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  use_heap ; 
 double FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static double FUNC5(const UChar *nptr, UChar **endptr) /* {{{ */
{
	const UChar *u = nptr, *nstart;
	UChar c = *u;
	int any = 0;

	while (FUNC3(c)) {
		c = *++u;
	}
	nstart = u;

	if (c == 0x2D /*'-'*/ || c == 0x2B /*'+'*/) {
		c = *++u;
	}

	while (c >= 0x30 /*'0'*/ && c <= 0x39 /*'9'*/) {
		any = 1;
		c = *++u;
	}

	if (c == 0x2E /*'.'*/) {
		c = *++u;
		while (c >= 0x30 /*'0'*/ && c <= 0x39 /*'9'*/) {
			any = 1;
			c = *++u;
		}
	}

	if ((c == 0x65 /*'e'*/ || c == 0x45 /*'E'*/) && any) {
		const UChar *e = u;
		int any_exp = 0;

		c = *++u;
		if (c == 0x2D /*'-'*/ || c == 0x2B /*'+'*/) {
			c = *++u;
		}

		while (c >= 0x30 /*'0'*/ && c <= 0x39 /*'9'*/) {
			any_exp = 1;
			c = *++u;
		}

		if (!any_exp) {
			u = e;
		}
	}

	if (any) {
		char buf[64], *numbuf, *bufpos;
		size_t length = u - nstart;
		double value;
		FUNC0(use_heap);

		if (length < sizeof(buf)) {
			numbuf = buf;
		} else {
			numbuf = (char *) FUNC1(length + 1, use_heap);
		}

		bufpos = numbuf;

		while (nstart < u) {
			*bufpos++ = (char) *nstart++;
		}

		*bufpos = '\0';
		value = FUNC4(numbuf, NULL);

		if (numbuf != buf) {
			FUNC2(numbuf, use_heap);
		}

		if (endptr != NULL) {
			*endptr = (UChar *)u;
		}

		return value;
	}

	if (endptr != NULL) {
		*endptr = (UChar *)nptr;
	}

	return 0;
}