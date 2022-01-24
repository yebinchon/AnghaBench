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
typedef  int /*<<< orphan*/  deparse_namespace ;
typedef  int /*<<< orphan*/  deparse_columns ;

/* Variables and functions */
 scalar_t__ NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(char *colname, deparse_namespace *dpns,
					deparse_columns *colinfo)
{
	/*
	 * If the selected name isn't unique, append digits to make it so.  For a
	 * very long input name, we might have to truncate to stay within
	 * NAMEDATALEN.
	 */
	if (!FUNC0(colname, dpns, colinfo))
	{
		int			colnamelen = FUNC5(colname);
		char	   *modname = (char *) FUNC2(colnamelen + 16);
		int			i = 0;

		do
		{
			i++;
			for (;;)
			{
				/*
				 * We avoid using %.*s here because it can misbehave if the
				 * data is not valid in what libc thinks is the prevailing
				 * encoding.
				 */
				FUNC1(modname, colname, colnamelen);
				FUNC4(modname + colnamelen, "_%d", i);
				if (FUNC5(modname) < NAMEDATALEN)
					break;
				/* drop chars from colname to keep all the digits */
				colnamelen = FUNC3(colname, colnamelen,
										  colnamelen - 1);
			}
		} while (!FUNC0(modname, dpns, colinfo));
		colname = modname;
	}
	return colname;
}