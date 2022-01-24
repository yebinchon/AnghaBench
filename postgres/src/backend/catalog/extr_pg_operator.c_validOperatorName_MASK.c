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

/* Variables and functions */
 size_t NAMEDATALEN ; 
 scalar_t__ FUNC0 (char*,char const) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char const*) ; 
 size_t FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC5(const char *name)
{
	size_t		len = FUNC2(name);

	/* Can't be empty or too long */
	if (len == 0 || len >= NAMEDATALEN)
		return false;

	/* Can't contain any invalid characters */
	/* Test string here should match op_chars in scan.l */
	if (FUNC3(name, "~!@#^&|`?+-*/%<>=") != len)
		return false;

	/* Can't contain slash-star or dash-dash (comment starts) */
	if (FUNC4(name, "/*") || FUNC4(name, "--"))
		return false;

	/*
	 * For SQL standard compatibility, '+' and '-' cannot be the last char of
	 * a multi-char operator unless the operator contains chars that are not
	 * in SQL operators. The idea is to lex '=-' as two operators, but not to
	 * forbid operator names like '?-' that could not be sequences of standard
	 * SQL operators.
	 */
	if (len > 1 &&
		(name[len - 1] == '+' ||
		 name[len - 1] == '-'))
	{
		int			ic;

		for (ic = len - 2; ic >= 0; ic--)
		{
			if (FUNC0("~!@#^&|`?%", name[ic]))
				break;
		}
		if (ic < 0)
			return false;		/* nope, not valid */
	}

	/* != isn't valid either, because parser will convert it to <> */
	if (FUNC1(name, "!=") == 0)
		return false;

	return true;
}