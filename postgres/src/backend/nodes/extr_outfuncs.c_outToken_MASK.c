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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

void
FUNC3(StringInfo str, const char *s)
{
	if (s == NULL || *s == '\0')
	{
		FUNC1(str, "<>");
		return;
	}

	/*
	 * Look for characters or patterns that are treated specially by read.c
	 * (either in pg_strtok() or in nodeRead()), and therefore need a
	 * protective backslash.
	 */
	/* These characters only need to be quoted at the start of the string */
	if (*s == '<' ||
		*s == '"' ||
		FUNC2((unsigned char) *s) ||
		((*s == '+' || *s == '-') &&
		 (FUNC2((unsigned char) s[1]) || s[1] == '.')))
		FUNC0(str, '\\');
	while (*s)
	{
		/* These chars must be backslashed anywhere in the string */
		if (*s == ' ' || *s == '\n' || *s == '\t' ||
			*s == '(' || *s == ')' || *s == '{' || *s == '}' ||
			*s == '\\')
			FUNC0(str, '\\');
		FUNC0(str, *s++);
	}
}