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
 int compat ; 
 char* connection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(char *name)
{
	const char *con = connection ? connection : "NULL";

	if (FUNC4(name, "all") != 0)
	{
		FUNC0(base_yyout, "{ ECPGdeallocate(__LINE__, %d, %s, ", compat, con);
		FUNC3(name, true);
		FUNC1(");", base_yyout);
	}
	else
		FUNC0(base_yyout, "{ ECPGdeallocate_all(__LINE__, %d, %s);", compat, con);

	FUNC5(2);
	FUNC2(name);
	if (connection != NULL)
		FUNC2(connection);
	connection = NULL;
}