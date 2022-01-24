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
 char ESCAPE_STRING_SYNTAX ; 
 size_t FUNC0 (char*,char*,size_t) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5(char *arg, bool quote, int lineno)
{
	char	   *res;
	size_t		length;
	size_t		escaped_len;
	size_t		buffer_len;

	/*
	 * if quote is false we just need to store things in a descriptor they
	 * will be quoted once they are inserted in a statement
	 */
	if (!quote)
		return arg;
	else
	{
		length = FUNC4(arg);
		buffer_len = 2 * length + 1;
		res = (char *) FUNC1(buffer_len + 3, lineno);
		if (!res)
			return res;
		escaped_len = FUNC0(res + 1, arg, buffer_len);
		if (length == escaped_len)
		{
			res[0] = res[escaped_len + 1] = '\'';
			res[escaped_len + 2] = '\0';
		}
		else
		{
			/*
			 * We don't know if the target database is using
			 * standard_conforming_strings, so we always use E'' strings.
			 */
			FUNC3(res + 2, res + 1, escaped_len);
			res[0] = ESCAPE_STRING_SYNTAX;
			res[1] = res[escaped_len + 2] = '\'';
			res[escaped_len + 3] = '\0';
		}
		FUNC2(arg);
		return res;
	}
}