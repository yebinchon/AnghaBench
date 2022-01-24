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
typedef  int /*<<< orphan*/  npy_bool ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_MAXDIMS ; 
 scalar_t__ NPY_SUCCEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 

__attribute__((used)) static PyObject *
FUNC5(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    PyObject *axis_in = NULL;
    npy_bool axis_flags[NPY_MAXDIMS];

    static char *kwlist[] = {"axis", NULL};
    if (!FUNC0(args, kwds, "|O:squeeze", kwlist,
                                     &axis_in)) {
        return NULL;
    }

    if (axis_in == NULL || axis_in == Py_None) {
        return FUNC3(self);
    }
    else {
        if (FUNC1(axis_in, FUNC2(self),
                                            axis_flags) != NPY_SUCCEED) {
            return NULL;
        }

        return FUNC4(self, axis_flags);
    }
}