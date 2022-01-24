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
 int /*<<< orphan*/  NPY_ANYORDER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC9(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"refcheck", NULL};
    Py_ssize_t size = FUNC6(args);
    int refcheck = 1;
    PyArray_Dims newshape;
    PyObject *ret, *obj;


    if (!FUNC0(kwds, "|i", kwlist,  &refcheck)) {
        return NULL;
    }

    if (size == 0) {
        Py_RETURN_NONE;
    }
    else if (size == 1) {
        obj = FUNC5(args, 0);
        if (obj == Py_None) {
            Py_RETURN_NONE;
        }
        args = obj;
    }
    if (!FUNC1(args, &newshape)) {
        if (!FUNC3()) {
            FUNC4(PyExc_TypeError, "invalid shape");
        }
        return NULL;
    }

    ret = FUNC2(self, &newshape, refcheck, NPY_ANYORDER);
    FUNC8(newshape);
    if (ret == NULL) {
        return NULL;
    }
    FUNC7(ret);
    Py_RETURN_NONE;
}