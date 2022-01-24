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
typedef  int /*<<< orphan*/  npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_StridedUnaryOp ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int NPY_FAIL ; 
 int NPY_SUCCEED ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            int src_type_num, int dst_type_num,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata)
{
    /* Emit a warning if complex imaginary is being cast away */
    if (FUNC6(src_type_num) &&
                    !FUNC6(dst_type_num) &&
                    !FUNC5(dst_type_num)) {
        PyObject *cls = NULL, *obj = NULL;
        int ret;
        obj = FUNC3("numpy.core");
        if (obj) {
            cls = FUNC4(obj, "ComplexWarning");
            FUNC7(obj);
        }
        ret = FUNC2(cls,
                "Casting complex values to real discards "
                "the imaginary part", 1);
        FUNC8(cls);
        if (ret < 0) {
            return NPY_FAIL;
        }
    }

    *out_stransfer = FUNC0(aligned,
                                src_stride, dst_stride,
                                src_type_num, dst_type_num);
    *out_transferdata = NULL;
    if (*out_stransfer == NULL) {
        FUNC1(PyExc_ValueError,
                "unexpected error in GetStridedNumericCastFn");
        return NPY_FAIL;
    }

    return NPY_SUCCEED;
}