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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 char ESCAPE_STRING_SYNTAX ; 
 scalar_t__ FUNC0 (char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 

void
FUNC3(StringInfo buf, const char *val)
{
	const char *valptr;

	/*
	 * Rather than making assumptions about the remote server's value of
	 * standard_conforming_strings, always use E'foo' syntax if there are any
	 * backslashes.  This will fail on remote servers before 8.1, but those
	 * are long out of support.
	 */
	if (FUNC2(val, '\\') != NULL)
		FUNC1(buf, ESCAPE_STRING_SYNTAX);
	FUNC1(buf, '\'');
	for (valptr = val; *valptr; valptr++)
	{
		char		ch = *valptr;

		if (FUNC0(ch, true))
			FUNC1(buf, ch);
		FUNC1(buf, ch);
	}
	FUNC1(buf, '\'');
}