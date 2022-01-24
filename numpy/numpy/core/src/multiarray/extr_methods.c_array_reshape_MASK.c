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
typedef  int /*<<< orphan*/  NPY_ORDER ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_CORDER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_OrderConverter ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ Py_None ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC10(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *keywords[] = {"order", NULL};
    PyArray_Dims newshape;
    PyObject *ret;
    NPY_ORDER order = NPY_CORDER;
    Py_ssize_t n = FUNC8(args);

    if (!FUNC0(kwds, "|O&", keywords,
                PyArray_OrderConverter, &order)) {
        return NULL;
    }

    if (n <= 1) {
        if (n != 0 && FUNC7(args, 0) == Py_None) {
            return FUNC4(self, NULL, NULL);
        }
        if (!FUNC1(args, "O&:reshape", PyArray_IntpConverter,
                              &newshape)) {
            return NULL;
        }
    }
    else {
        if (!FUNC2(args, &newshape)) {
            if (!FUNC5()) {
                FUNC6(PyExc_TypeError,
                                "invalid shape");
            }
            goto fail;
        }
    }
    ret = FUNC3(self, &newshape, order);
    FUNC9(newshape);
    return ret;

 fail:
    FUNC9(newshape);
    return NULL;
}