#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* envvar; int /*<<< orphan*/ * keyword; } ;
typedef  TYPE_1__ PQconninfoOption ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

void
FUNC6(void)
{
	PQconninfoOption *option;
	PQconninfoOption *start;

	/* Get valid libpq env vars from the PQconndefaults function */

	start = FUNC0();

	if (!start)
		FUNC3("out of memory\n");

	for (option = start; option->keyword != NULL; option++)
	{
		if (option->envvar && (FUNC4(option->envvar, "PGHOST") == 0 ||
							   FUNC4(option->envvar, "PGHOSTADDR") == 0))
		{
			const char *value = FUNC2(option->envvar);

			if (value && FUNC5(value) > 0 &&
			/* check for 'local' host values */
				(FUNC4(value, "localhost") != 0 && FUNC4(value, "127.0.0.1") != 0 &&
				 FUNC4(value, "::1") != 0 && value[0] != '/'))
				FUNC3("libpq environment variable %s has a non-local server value: %s\n",
						 option->envvar, value);
		}
	}

	/* Free the memory that libpq allocated on our behalf */
	FUNC1(start);
}