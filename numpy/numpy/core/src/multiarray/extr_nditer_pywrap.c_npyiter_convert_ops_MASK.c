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
typedef  int npy_uint32 ;
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_ARRAY_WRITEBACKIFCOPY ; 
 int NPY_ITER_ALLOCATE ; 
 int NPY_ITER_READONLY ; 
 int NPY_ITER_READWRITE ; 
 int NPY_ITER_WRITEONLY ; 
 int NPY_MAXARGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int
FUNC12(PyObject *op_in, PyObject *op_flags_in,
                    PyArrayObject **op, npy_uint32 *op_flags,
                    int *nop_out)
{
    int iop, nop;

    /* nop and op */
    if (FUNC7(op_in) || FUNC4(op_in)) {
        nop = FUNC6(op_in);
        if (nop == 0) {
            FUNC3(PyExc_ValueError,
                    "Must provide at least one operand");
            return 0;
        }
        if (nop > NPY_MAXARGS) {
            FUNC3(PyExc_ValueError, "Too many operands");
            return 0;
        }

        for (iop = 0; iop < nop; ++iop) {
            PyObject *item = FUNC5(op_in, iop);
            if (item == NULL) {
                npy_intp i;
                for (i = 0; i < iop; ++i) {
                    FUNC10(op[i]);
                }
                return 0;
            }
            else if (item == Py_None) {
                FUNC8(item);
                item = NULL;
            }
            /* This is converted to an array after op flags are retrieved */
            op[iop] = (PyArrayObject *)item;
        }
    }
    else {
        nop = 1;
        /* Is converted to an array after op flags are retrieved */
        FUNC9(op_in);
        op[0] = (PyArrayObject *)op_in;
    }

    *nop_out = nop;

    /* op_flags */
    if (op_flags_in == NULL || op_flags_in == Py_None) {
        for (iop = 0; iop < nop; ++iop) {
            /*
             * By default, make NULL operands writeonly and flagged for
             * allocation, and everything else readonly.  To write
             * to a provided operand, you must specify the write flag manually.
             */
            if (op[iop] == NULL) {
                op_flags[iop] = NPY_ITER_WRITEONLY | NPY_ITER_ALLOCATE;
            }
            else {
                op_flags[iop] = NPY_ITER_READONLY;
            }
        }
    }
    else if (FUNC11(op_flags_in,
                                      op_flags, nop) != 1) {
        for (iop = 0; iop < nop; ++iop) {
            FUNC10(op[iop]);
        }
        *nop_out = 0;
        return 0;
    }

    /* Now that we have the flags - convert all the ops to arrays */
    for (iop = 0; iop < nop; ++iop) {
        if (op[iop] != NULL) {
            PyArrayObject *ao;
            int fromanyflags = 0;

            if (op_flags[iop]&(NPY_ITER_READWRITE|NPY_ITER_WRITEONLY)) {
                fromanyflags |= NPY_ARRAY_WRITEBACKIFCOPY;
            }
            ao = (PyArrayObject *)FUNC0((PyObject *)op[iop],
                                                  fromanyflags);
            if (ao == NULL) {
                if (FUNC2() &&
                            FUNC1(PyExc_TypeError)) {
                    FUNC3(PyExc_TypeError,
                            "Iterator operand is flagged as writeable, "
                            "but is an object which cannot be written "
                            "back to via WRITEBACKIFCOPY");
                }
                for (iop = 0; iop < nop; ++iop) {
                    FUNC8(op[iop]);
                }
                *nop_out = 0;
                return 0;
            }
            FUNC8(op[iop]);
            op[iop] = ao;
        }
    }

    return 1;
}