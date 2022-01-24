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
typedef  int timelib_long ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static timelib_long FUNC4(char **ptr)
{
	char *begin = *ptr, *end;
	timelib_long  tmp;

	while (FUNC0(**ptr) || **ptr == ':') {
		++*ptr;
	}
	end = *ptr;
	switch (end - begin) {
		case 1: /* H */
		case 2: /* HH */
			return FUNC1(FUNC3(begin, NULL, 10));
			break;
		case 3: /* H:M */
		case 4: /* H:MM, HH:M, HHMM */
			if (begin[1] == ':') {
				tmp = FUNC1(FUNC3(begin, NULL, 10)) + FUNC2(FUNC3(begin + 2, NULL, 10));
				return tmp;
			} else if (begin[2] == ':') {
				tmp = FUNC1(FUNC3(begin, NULL, 10)) + FUNC2(FUNC3(begin + 3, NULL, 10));
				return tmp;
			} else {
				tmp = FUNC3(begin, NULL, 10);
				return FUNC1(tmp / 100) + FUNC2(tmp % 100);
			}
		case 5: /* HH:MM */
			tmp = FUNC1(FUNC3(begin, NULL, 10)) + FUNC2(FUNC3(begin + 3, NULL, 10));
			return tmp;
	}
	return 0;
}