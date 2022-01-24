#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int gmtoffset; int type; } ;
typedef  TYPE_1__ timelib_tz_lookup_table ;
typedef  int timelib_long ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (int,int) ; 

__attribute__((used)) static timelib_long FUNC3(char **ptr, int *dst, char **tz_abbr, int *found)
{
	char *word;
	char *begin = *ptr, *end;
	timelib_long  value = 0;
	const timelib_tz_lookup_table *tp;

	while (**ptr != '\0' && **ptr != ')' && **ptr != ' ') {
		++*ptr;
	}
	end = *ptr;
	word = FUNC2(1, end - begin + 1);
	FUNC1(word, begin, end - begin);

	if ((tp = FUNC0(word, -1, 0))) {
		value = tp->gmtoffset;
		*dst = tp->type;
		value -= tp->type * 3600;
		*found = 1;
	} else {
		*found = 0;
	}

	*tz_abbr = word;
	return value;
}