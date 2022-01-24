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
struct config_generic {int dummy; } ;
typedef  int /*<<< orphan*/  mixedStruct ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct config_generic** FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(void)
{
	struct config_generic **guc_vars;
	int			numOpts,
				i;

	/* Initialize the guc_variables[] array */
	FUNC1();

	guc_vars = FUNC4();
	numOpts = FUNC0();

	for (i = 0; i < numOpts; i++)
	{
		mixedStruct *var = (mixedStruct *) guc_vars[i];

		if (FUNC2(var))
			FUNC5(var);
	}

	FUNC3(0);
}