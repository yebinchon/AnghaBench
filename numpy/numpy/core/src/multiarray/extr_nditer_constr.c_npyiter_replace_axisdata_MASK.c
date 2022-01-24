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
typedef  int /*<<< orphan*/  npy_uint32 ;
typedef  int npy_intp ;
typedef  int npy_int8 ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NpyIter_AxisData ;
typedef  int /*<<< orphan*/  NpyIter ;

/* Variables and functions */
 char** FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int* FUNC9 (int /*<<< orphan*/ *) ; 
 char** FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC13(NpyIter *iter, int iop,
                      PyArrayObject *op,
                      int op_ndim, char *op_dataptr,
                      int *op_axes)
{
    npy_uint32 itflags = FUNC6(iter);
    int idim, ndim = FUNC7(iter);
    int nop = FUNC8(iter);

    NpyIter_AxisData *axisdata0, *axisdata;
    npy_intp sizeof_axisdata;
    npy_int8 *perm;
    npy_intp baseoffset = 0;

    perm = FUNC9(iter);
    axisdata0 = FUNC3(iter);
    sizeof_axisdata = FUNC4(itflags, ndim, nop);

    /*
     * Replace just the strides which were non-zero, and compute
     * the base data address.
     */
    axisdata = axisdata0;

    if (op_axes != NULL) {
        for (idim = 0; idim < ndim; ++idim, FUNC2(axisdata, 1)) {
            npy_int8 p;
            int i;
            npy_intp shape;

            /* Apply the perm to get the original axis */
            p = perm[idim];
            if (p < 0) {
                i = op_axes[ndim+p];
            }
            else {
                i = op_axes[ndim-p-1];
            }

            if (0 <= i && i < op_ndim) {
                shape = FUNC11(op, i);
                if (shape != 1) {
                    npy_intp stride = FUNC12(op, i);
                    if (p < 0) {
                        /* If the perm entry is negative, flip the axis */
                        FUNC1(axisdata)[iop] = -stride;
                        baseoffset += stride*(shape-1);
                    }
                    else {
                        FUNC1(axisdata)[iop] = stride;
                    }
                }
            }
        }
    }
    else {
        for (idim = 0; idim < ndim; ++idim, FUNC2(axisdata, 1)) {
            npy_int8 p;
            int i;
            npy_intp shape;

            /* Apply the perm to get the original axis */
            p = perm[idim];
            if (p < 0) {
                i = op_ndim+p;
            }
            else {
                i = op_ndim-p-1;
            }

            if (i >= 0) {
                shape = FUNC11(op, i);
                if (shape != 1) {
                    npy_intp stride = FUNC12(op, i);
                    if (p < 0) {
                        /* If the perm entry is negative, flip the axis */
                        FUNC1(axisdata)[iop] = -stride;
                        baseoffset += stride*(shape-1);
                    }
                    else {
                        FUNC1(axisdata)[iop] = stride;
                    }
                }
            }
        }
    }

    op_dataptr += baseoffset;

    /* Now the base data pointer is calculated, set it everywhere it's needed */
    FUNC10(iter)[iop] = op_dataptr;
    FUNC5(iter)[iop] = baseoffset;
    axisdata = axisdata0;
    /* Fill at least one axisdata, for the 0-d case */
    FUNC0(axisdata)[iop] = op_dataptr;
    FUNC2(axisdata, 1);
    for (idim = 1; idim < ndim; ++idim, FUNC2(axisdata, 1)) {
        FUNC0(axisdata)[iop] = op_dataptr;
    }
}