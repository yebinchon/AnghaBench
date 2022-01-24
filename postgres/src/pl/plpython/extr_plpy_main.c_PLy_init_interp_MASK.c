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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * PLy_interp_globals ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void)
{
	static PyObject *PLy_interp_safe_globals = NULL;
	PyObject   *mainmod;

	mainmod = FUNC4("__main__");
	if (mainmod == NULL || FUNC3())
		FUNC0(ERROR, "could not import \"__main__\" module");
	FUNC7(mainmod);
	PLy_interp_globals = FUNC5(mainmod);
	PLy_interp_safe_globals = FUNC1();
	if (PLy_interp_safe_globals == NULL)
		FUNC0(ERROR, NULL);
	FUNC2(PLy_interp_globals, "GD", PLy_interp_safe_globals);
	FUNC6(mainmod);
	if (PLy_interp_globals == NULL || FUNC3())
		FUNC0(ERROR, "could not initialize globals");
}