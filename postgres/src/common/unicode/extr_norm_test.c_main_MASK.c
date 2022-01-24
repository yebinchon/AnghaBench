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
typedef  scalar_t__ pg_wchar ;
struct TYPE_3__ {scalar_t__* input; scalar_t__* output; int linenum; } ;
typedef  TYPE_1__ pg_unicode_test ;

/* Variables and functions */
 TYPE_1__* UnicodeNormalizationTests ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*) ; 
 char* FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__* FUNC4 (scalar_t__*) ; 

int
FUNC5(int argc, char **argv)
{
	const		pg_unicode_test *test;

	for (test = UnicodeNormalizationTests; test->input[0] != 0; test++)
	{
		pg_wchar   *result;

		result = FUNC4(test->input);

		if (FUNC1(test->output, result) != 0)
		{
			FUNC3("FAILURE (NormalizationTest.txt line %d):\n", test->linenum);
			FUNC3("input:\t%s\n", FUNC2(test->input));
			FUNC3("expected:\t%s\n", FUNC2(test->output));
			FUNC3("got\t%s\n", FUNC2(result));
			FUNC3("\n");
			FUNC0(1);
		}
	}

	FUNC3("All tests successful!\n");
	FUNC0(0);
}