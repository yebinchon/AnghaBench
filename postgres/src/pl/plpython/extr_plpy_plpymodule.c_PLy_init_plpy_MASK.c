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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PLy_methods ; 
 int /*<<< orphan*/  PLy_module ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int /*<<< orphan*/ ) ; 

void
FUNC12(void)
{
	PyObject   *main_mod,
			   *main_dict,
			   *plpy_mod;

#if PY_MAJOR_VERSION < 3
	PyObject   *plpy;
#endif

	/*
	 * initialize plpy module
	 */
	FUNC3();
	FUNC4();
	FUNC5();
	FUNC1();

#if PY_MAJOR_VERSION >= 3
	PyModule_Create(&PLy_module);
	/* for Python 3 we initialized the exceptions in PyInit_plpy */
#else
	plpy = FUNC11("plpy", PLy_methods);
	FUNC0(plpy);
#endif

	/* PyDict_SetItemString(plpy, "PlanType", (PyObject *) &PLy_PlanType); */

	/*
	 * initialize main module, and add plpy
	 */
	main_mod = FUNC8("__main__");
	main_dict = FUNC10(main_mod);
	plpy_mod = FUNC8("plpy");
	if (plpy_mod == NULL)
		FUNC2(ERROR, "could not import \"plpy\" module");
	FUNC6(main_dict, "plpy", plpy_mod);
	if (FUNC7())
		FUNC2(ERROR, "could not import \"plpy\" module");
}