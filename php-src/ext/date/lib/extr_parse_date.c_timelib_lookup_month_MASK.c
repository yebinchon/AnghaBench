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
struct TYPE_3__ {int /*<<< orphan*/  value; scalar_t__ name; } ;
typedef  TYPE_1__ timelib_lookup_table ;
typedef  int /*<<< orphan*/  timelib_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* timelib_month_lookup ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static timelib_long FUNC4(char **ptr)
{
	char *word;
	char *begin = *ptr, *end;
	timelib_long  value = 0;
	const timelib_lookup_table *tp;

	while ((**ptr >= 'A' && **ptr <= 'Z') || (**ptr >= 'a' && **ptr <= 'z')) {
		++*ptr;
	}
	end = *ptr;
	word = FUNC1(1, end - begin + 1);
	FUNC0(word, begin, end - begin);

	for (tp = timelib_month_lookup; tp->name; tp++) {
		if (FUNC3(word, tp->name) == 0) {
			value = tp->value;
		}
	}

	FUNC2(word);
	return value;
}