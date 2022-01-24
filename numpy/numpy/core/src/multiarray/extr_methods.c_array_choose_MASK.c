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
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NPY_CLIPMODE ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_RAISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_ClipmodeConverter ; 
 int /*<<< orphan*/  PyArray_OutputConverter ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC5(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *keywords[] = {"out", "mode", NULL};
    PyObject *choices;
    PyArrayObject *out = NULL;
    NPY_CLIPMODE clipmode = NPY_RAISE;
    Py_ssize_t n = FUNC4(args);

    if (n <= 1) {
        if (!FUNC1(args, "O:choose", &choices)) {
            return NULL;
        }
    }
    else {
        choices = args;
    }

    if (!FUNC0(kwds, "|O&O&", keywords,
                PyArray_OutputConverter, &out,
                PyArray_ClipmodeConverter, &clipmode)) {
        return NULL;
    }

    return FUNC3((PyArrayObject *)FUNC2(self, choices, out, clipmode));
}