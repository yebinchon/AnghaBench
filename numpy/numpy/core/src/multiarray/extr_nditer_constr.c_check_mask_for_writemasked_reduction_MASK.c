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
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  NpyIter_AxisData ;
typedef  int /*<<< orphan*/  NpyIter ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 

__attribute__((used)) static int
FUNC9(NpyIter *iter, int iop)
{
    npy_uint32 itflags = FUNC4(iter);
    int idim, ndim = FUNC6(iter);
    int nop = FUNC7(iter);
    int maskop = FUNC5(iter);

    NpyIter_AxisData *axisdata;
    npy_intp sizeof_axisdata;

    axisdata = FUNC2(iter);
    sizeof_axisdata = FUNC3(itflags, ndim, nop);

    for(idim = 0; idim < ndim; ++idim) {
        npy_intp maskstride, istride;

        istride = FUNC0(axisdata)[iop];
        maskstride = FUNC0(axisdata)[maskop];

        /*
         * If 'iop' is being broadcast to 'maskop', we have
         * the invalid situation described above.
         */
        if (maskstride != 0 && istride == 0) {
            FUNC8(PyExc_ValueError,
                    "Iterator reduction operand is WRITEMASKED, "
                    "but also broadcasts to multiple mask values. "
                    "There can be only one mask value per WRITEMASKED "
                    "element.");
            return 0;
        }

        FUNC1(axisdata, 1);
    }

    return 1;
}