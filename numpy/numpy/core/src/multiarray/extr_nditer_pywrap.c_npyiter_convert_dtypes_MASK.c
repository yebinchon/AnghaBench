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
typedef  size_t npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(PyObject *op_dtypes_in,
                        PyArray_Descr **op_dtypes,
                        npy_intp nop)
{
    npy_intp iop;

    /*
     * If the input isn't a tuple of dtypes, try converting it as-is
     * to a dtype, and replicating to all operands.
     */
    if ((!FUNC5(op_dtypes_in) && !FUNC2(op_dtypes_in)) ||
                                    FUNC4(op_dtypes_in) != nop) {
        goto try_single_dtype;
    }

    for (iop = 0; iop < nop; ++iop) {
        PyObject *dtype = FUNC3(op_dtypes_in, iop);
        if (dtype == NULL) {
            npy_intp i;
            for (i = 0; i < iop; ++i ) {
                FUNC7(op_dtypes[i]);
            }
            return 0;
        }

        /* Try converting the object to a descr */
        if (FUNC0(dtype, &op_dtypes[iop]) != 1) {
            npy_intp i;
            for (i = 0; i < iop; ++i ) {
                FUNC7(op_dtypes[i]);
            }
            FUNC6(dtype);
            FUNC1();
            goto try_single_dtype;
        }

        FUNC6(dtype);
    }

    return 1;

try_single_dtype:
    if (FUNC0(op_dtypes_in, &op_dtypes[0]) == 1) {
        for (iop = 1; iop < nop; ++iop) {
            op_dtypes[iop] = op_dtypes[0];
            FUNC8(op_dtypes[iop]);
        }
        return 1;
    }

    return 0;
}