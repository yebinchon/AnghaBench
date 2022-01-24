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
 int NPY_MAXDIMS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 

__attribute__((used)) static int
FUNC8(PyObject *op_axes_in, int nop,
                        int **op_axes, int *oa_ndim)
{
    PyObject *a;
    int iop;

    if ((!FUNC6(op_axes_in) && !FUNC3(op_axes_in)) ||
                                FUNC5(op_axes_in) != nop) {
        FUNC2(PyExc_ValueError,
                "op_axes must be a tuple/list matching the number of ops");
        return 0;
    }

    *oa_ndim = -1;

    /* Copy the tuples into op_axes */
    for (iop = 0; iop < nop; ++iop) {
        int idim;
        a = FUNC4(op_axes_in, iop);
        if (a == NULL) {
            return 0;
        }
        if (a == Py_None) {
            op_axes[iop] = NULL;
        } else {
            if (!FUNC6(a) && !FUNC3(a)) {
                FUNC2(PyExc_ValueError,
                        "Each entry of op_axes must be None "
                        "or a tuple/list");
                FUNC7(a);
                return 0;
            }
            if (*oa_ndim == -1) {
                *oa_ndim = FUNC5(a);
                if (*oa_ndim > NPY_MAXDIMS) {
                    FUNC2(PyExc_ValueError,
                            "Too many dimensions in op_axes");
                    FUNC7(a);
                    return 0;
                }
            }
            if (FUNC5(a) != *oa_ndim) {
                FUNC2(PyExc_ValueError,
                        "Each entry of op_axes must have the same size");
                FUNC7(a);
                return 0;
            }
            for (idim = 0; idim < *oa_ndim; ++idim) {
                PyObject *v = FUNC4(a, idim);
                if (v == NULL) {
                    FUNC7(a);
                    return 0;
                }
                /* numpy.newaxis is None */
                if (v == Py_None) {
                    op_axes[iop][idim] = -1;
                }
                else {
                    op_axes[iop][idim] = FUNC0(v);
                    if (op_axes[iop][idim]==-1 &&
                                                FUNC1()) {
                        FUNC7(a);
                        FUNC7(v);
                        return 0;
                    }
                }
                FUNC7(v);
            }
        }
        FUNC7(a);
    }

    if (*oa_ndim == -1) {
        FUNC2(PyExc_ValueError,
                "If op_axes is provided, at least one list of axes "
                "must be contained within it");
        return 0;
    }

    return 1;
}