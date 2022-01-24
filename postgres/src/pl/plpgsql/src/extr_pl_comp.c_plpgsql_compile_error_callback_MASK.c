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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ plpgsql_error_funcname ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	if (arg)
	{
		/*
		 * Try to convert syntax error position to reference text of original
		 * CREATE FUNCTION or DO command.
		 */
		if (FUNC1((const char *) arg))
			return;

		/*
		 * Done if a syntax error position was reported; otherwise we have to
		 * fall back to a "near line N" report.
		 */
	}

	if (plpgsql_error_funcname)
		FUNC0("compilation of PL/pgSQL function \"%s\" near line %d",
				   plpgsql_error_funcname, FUNC2());
}