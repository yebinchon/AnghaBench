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
struct TYPE_3__ {char* buf; scalar_t__ in_quotes; } ;
typedef  TYPE_1__* TSQueryParserState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static bool
FUNC6(TSQueryParserState pstate)
{
	char	   *ptr = pstate->buf;

	if (pstate->in_quotes)
		return false;

	/* it should begin with "OR" literal */
	if (FUNC1(ptr, "or", 2) != 0)
		return false;

	ptr += 2;

	/*
	 * it shouldn't be a part of any word but somewhere later it should be
	 * some operand
	 */
	if (*ptr == '\0')			/* no operand */
		return false;

	/* it shouldn't be a part of any word */
	if (FUNC4(ptr, '-') || FUNC4(ptr, '_') || FUNC2(ptr) || FUNC3(ptr))
		return false;

	for (;;)
	{
		ptr += FUNC0(ptr);

		if (*ptr == '\0')		/* got end of string without operand */
			return false;

		/*
		 * Suppose, we found an operand, but could be a not correct operand.
		 * So we still treat OR literal as operation with possibly incorrect
		 * operand and  will not search it as lexeme
		 */
		if (!FUNC5(ptr))
			break;
	}

	pstate->buf += 2;
	return true;
}