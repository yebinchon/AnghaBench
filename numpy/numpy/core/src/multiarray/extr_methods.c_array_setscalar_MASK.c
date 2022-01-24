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
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_MAXDIMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 scalar_t__ FUNC10 (int*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static PyObject *
FUNC12(PyArrayObject *self, PyObject *args)
{
    npy_intp multi_index[NPY_MAXDIMS];
    int n = FUNC9(args) - 1;
    int idim, ndim = FUNC2(self);
    PyObject *obj;

    if (n < 0) {
        FUNC6(PyExc_ValueError,
                "itemset must have at least one argument");
        return NULL;
    }
    if (FUNC0(self, "assignment destination") < 0) {
        return NULL;
    }

    obj = FUNC8(args, n);

    /* If there is a tuple as a single argument, treat it as the argument */
    if (n == 1 && FUNC7(FUNC8(args, 0))) {
        args = FUNC8(args, 0);
        n = FUNC9(args);
    }

    if (n == 0) {
        if (FUNC5(self) == 1) {
            for (idim = 0; idim < ndim; ++idim) {
                multi_index[idim] = 0;
            }
        }
        else {
            FUNC6(PyExc_ValueError,
                    "can only convert an array of size 1 to a Python scalar");
        }
    }
    /* Special case of C-order flat indexing... :| */
    else if (n == 1 && ndim != 1) {
        npy_intp *shape = FUNC4(self);
        npy_intp value, size = FUNC5(self);

        value = FUNC3(FUNC8(args, 0));
        if (FUNC11(value)) {
            return NULL;
        }

        if (FUNC10(&value, size, -1, NULL) < 0) {
            return NULL;
        }

        /* Convert the flat index into a multi-index */
        for (idim = ndim-1; idim >= 0; --idim) {
            multi_index[idim] = value % shape[idim];
            value /= shape[idim];
        }
    }
    /* A multi-index tuple */
    else if (n == ndim) {
        npy_intp value;

        for (idim = 0; idim < ndim; ++idim) {
            value = FUNC3(FUNC8(args, idim));
            if (FUNC11(value)) {
                return NULL;
            }
            multi_index[idim] = value;
        }
    }
    else {
        FUNC6(PyExc_ValueError,
                "incorrect number of indices for array");
        return NULL;
    }

    if (FUNC1(self, multi_index, obj) < 0) {
        return NULL;
    }
    else {
        Py_RETURN_NONE;
    }
}