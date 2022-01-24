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
 int /*<<< orphan*/  base_yyout ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char *str, bool quoted)
{
	int			i = 0;
	int			len = FUNC2(str);

	if (quoted && str[0] == '"' && str[len - 1] == '"') /* do not escape quotes
														 * at beginning and end
														 * if quoted string */
	{
		i = 1;
		len--;
		FUNC1("\"", base_yyout);
	}

	/* output this char by char as we have to filter " and \n */
	for (; i < len; i++)
	{
		if (str[i] == '"')
			FUNC1("\\\"", base_yyout);
		else if (str[i] == '\n')
			FUNC1("\\\n", base_yyout);
		else if (str[i] == '\\')
		{
			int			j = i;

			/*
			 * check whether this is a continuation line if it is, do not
			 * output anything because newlines are escaped anyway
			 */

			/* accept blanks after the '\' as some other compilers do too */
			do
			{
				j++;
			} while (str[j] == ' ' || str[j] == '\t');

			if ((str[j] != '\n') && (str[j] != '\r' || str[j + 1] != '\n')) /* not followed by a
																			 * newline */
				FUNC1("\\\\", base_yyout);
		}
		else if (str[i] == '\r' && str[i + 1] == '\n')
		{
			FUNC1("\\\r\n", base_yyout);
			i++;
		}
		else
			FUNC0(str[i], base_yyout);
	}

	if (quoted && str[0] == '"' && str[len] == '"')
		FUNC1("\"", base_yyout);
}