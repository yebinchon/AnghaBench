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
typedef  int /*<<< orphan*/  PyArray_Dims ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC5(PyArrayObject *self, PyObject *args)
{
    PyObject *shape = Py_None;
    Py_ssize_t n = FUNC3(args);
    PyArray_Dims permute;
    PyObject *ret;

    if (n > 1) {
        shape = args;
    }
    else if (n == 1) {
        shape = FUNC2(args, 0);
    }

    if (shape == Py_None) {
        ret = FUNC1(self, NULL);
    }
    else {
        if (!FUNC0(shape, &permute)) {
            return NULL;
        }
        ret = FUNC1(self, &permute);
        FUNC4(permute);
    }

    return ret;
}