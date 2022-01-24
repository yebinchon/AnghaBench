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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	const char *query = (const char *) arg;
	int			syntaxerrposition;

	if (query == NULL)			/* in case arg wasn't set yet */
		return;

	/*
	 * If there is a syntax error position, convert to internal syntax error;
	 * otherwise treat the query as an item of context stack
	 */
	syntaxerrposition = FUNC2();
	if (syntaxerrposition > 0)
	{
		FUNC1(0);
		FUNC3(syntaxerrposition);
		FUNC4(query);
	}
	else
		FUNC0("SQL statement \"%s\"", query);
}