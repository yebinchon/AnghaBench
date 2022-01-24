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
typedef  int /*<<< orphan*/  NpyIter_AxisData ;
typedef  int /*<<< orphan*/  NpyIter ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int NPY_ITER_C_INDEX ; 
 int NPY_ITER_F_INDEX ; 
 int NPY_ITFLAG_HASINDEX ; 

__attribute__((used)) static void
FUNC11(NpyIter *iter, npy_uint32 flags)
{
    npy_uint32 itflags = FUNC8(iter);
    int idim, ndim = FUNC9(iter);
    int nop = FUNC10(iter);

    npy_intp indexstride;
    NpyIter_AxisData *axisdata;
    npy_intp sizeof_axisdata;

    /*
     * If there is only one element being iterated, we just have
     * to touch the first AXISDATA because nothing will ever be
     * incremented. This also initializes the data for the 0-d case.
     */
    if (FUNC7(iter) == 1) {
        if (itflags & NPY_ITFLAG_HASINDEX) {
            axisdata = FUNC4(iter);
            FUNC0(axisdata)[nop] = 0;
        }
        return;
    }

    if (flags & NPY_ITER_C_INDEX) {
        sizeof_axisdata = FUNC5(itflags, ndim, nop);
        axisdata = FUNC4(iter);
        indexstride = 1;
        for(idim = 0; idim < ndim; ++idim, FUNC3(axisdata, 1)) {
            npy_intp shape = FUNC1(axisdata);

            if (shape == 1) {
                FUNC2(axisdata)[nop] = 0;
            }
            else {
                FUNC2(axisdata)[nop] = indexstride;
            }
            FUNC0(axisdata)[nop] = 0;
            indexstride *= shape;
        }
    }
    else if (flags & NPY_ITER_F_INDEX) {
        sizeof_axisdata = FUNC5(itflags, ndim, nop);
        axisdata = FUNC6(FUNC4(iter), ndim-1);
        indexstride = 1;
        for(idim = 0; idim < ndim; ++idim, FUNC3(axisdata, -1)) {
            npy_intp shape = FUNC1(axisdata);

            if (shape == 1) {
                FUNC2(axisdata)[nop] = 0;
            }
            else {
                FUNC2(axisdata)[nop] = indexstride;
            }
            FUNC0(axisdata)[nop] = 0;
            indexstride *= shape;
        }
    }
}