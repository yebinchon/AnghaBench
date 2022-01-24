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
 char* connection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int questionmarks ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(char *name, char *stmt)
{
	FUNC0(base_yyout, "{ ECPGprepare(__LINE__, %s, %d, ", connection ? connection : "NULL", questionmarks);
	FUNC3(name, true);
	FUNC1(", ", base_yyout);
	FUNC3(stmt, true);
	FUNC1(");", base_yyout);
	FUNC4(2);
	FUNC2(name);
	if (connection != NULL)
		FUNC2(connection);
	connection = NULL;
}