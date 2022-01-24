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
typedef  int /*<<< orphan*/  timelib_sll ;
struct TYPE_3__ {int type; int /*<<< orphan*/  value; scalar_t__ name; } ;
typedef  TYPE_1__ timelib_lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* timelib_reltext_lookup ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static timelib_sll FUNC4(char **ptr, int *behavior)
{
	char *word;
	char *begin = *ptr, *end;
	timelib_sll  value = 0;
	const timelib_lookup_table *tp;

	while ((**ptr >= 'A' && **ptr <= 'Z') || (**ptr >= 'a' && **ptr <= 'z')) {
		++*ptr;
	}
	end = *ptr;
	word = FUNC1(1, end - begin + 1);
	FUNC0(word, begin, end - begin);

	for (tp = timelib_reltext_lookup; tp->name; tp++) {
		if (FUNC3(word, tp->name) == 0) {
			value = tp->value;
			*behavior = tp->type;
		}
	}

	FUNC2(word);
	return value;
}