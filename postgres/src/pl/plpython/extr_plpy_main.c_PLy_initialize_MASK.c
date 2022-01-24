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
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * PLy_execution_contexts ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int PY_MAJOR_VERSION ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  PyInit_plpy ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  explicit_subtransactions ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int* plpython_version_bitmask_ptr ; 

__attribute__((used)) static void
FUNC11(void)
{
	static bool inited = false;

	/*
	 * Check for multiple Python libraries before actively doing anything with
	 * libpython.  This must be repeated on each entry to PL/Python, in case a
	 * conflicting library got loaded since we last looked.
	 *
	 * It is attractive to weaken this error from FATAL to ERROR, but there
	 * would be corner cases, so it seems best to be conservative.
	 */
	if (*plpython_version_bitmask_ptr != (1 << PY_MAJOR_VERSION))
		FUNC7(FATAL,
				(FUNC9("multiple Python libraries are present in session"),
				 FUNC8("Only one Python major version can be used in one session.")));

	/* The rest should only be done once per session */
	if (inited)
		return;

#if PY_MAJOR_VERSION >= 3
	PyImport_AppendInittab("plpy", PyInit_plpy);
#endif
	FUNC6();
#if PY_MAJOR_VERSION >= 3
	PyImport_ImportModule("plpy");
#endif
	FUNC1();
	FUNC2();
	if (FUNC3())
		FUNC0(FATAL, "untrapped error in initialization");

	FUNC10();

	explicit_subtransactions = NIL;

	PLy_execution_contexts = NULL;

	inited = true;
}