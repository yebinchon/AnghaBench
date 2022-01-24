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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC6(const char *name)
{
    PyObject *module_methods, *callable;

    /* Get a reference to the function we're calling */
    module_methods = FUNC2("numpy.core._methods");
    if (module_methods == NULL) {
        return NULL;
    }
    callable = FUNC0(FUNC3(module_methods), name);
    if (callable == NULL) {
        FUNC4(module_methods);
        FUNC1(PyExc_RuntimeError,
                "NumPy internal error: could not find function "
                "numpy.core._methods.%s", name);
    }
    else {
        FUNC5(callable);
    }
    FUNC4(module_methods);
    return callable;
}