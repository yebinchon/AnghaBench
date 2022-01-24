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
typedef  double timelib_sll ;

/* Variables and functions */
 double TIMELIB_UNSET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 double FUNC1 (int,int) ; 
 double FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static timelib_sll FUNC5(char **ptr, int max_length)
{
	char *begin, *end, *str;
	double tmp_nr = TIMELIB_UNSET;
	int len = 0;

	while ((**ptr != '.') && (**ptr != ':') && ((**ptr < '0') || (**ptr > '9'))) {
		if (**ptr == '\0') {
			return TIMELIB_UNSET;
		}
		++*ptr;
	}
	begin = *ptr;
	while (((**ptr == '.') || (**ptr == ':') || ((**ptr >= '0') && (**ptr <= '9'))) && len < max_length) {
		++*ptr;
		++len;
	}
	end = *ptr;
	str = FUNC3(1, end - begin);
	FUNC0(str, begin + 1, end - begin - 1);
	tmp_nr = FUNC2(str, NULL) * FUNC1(10, 7 - (end - begin));
	FUNC4(str);
	return tmp_nr;
}