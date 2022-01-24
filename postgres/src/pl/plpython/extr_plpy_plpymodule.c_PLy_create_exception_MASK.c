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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(char *name, PyObject *base, PyObject *dict,
					 const char *modname, PyObject *mod)
{
	PyObject   *exc;

	exc = FUNC1(name, base, dict);
	if (exc == NULL)
		FUNC0(ERROR, NULL);

	/*
	 * PyModule_AddObject does not add a refcount to the object, for some odd
	 * reason; we must do that.
	 */
	FUNC3(exc);
	FUNC2(mod, modname, exc);

	/*
	 * The caller will also store a pointer to the exception object in some
	 * permanent variable, so add another ref to account for that.  This is
	 * probably excessively paranoid, but let's be sure.
	 */
	FUNC3(exc);
	return exc;
}