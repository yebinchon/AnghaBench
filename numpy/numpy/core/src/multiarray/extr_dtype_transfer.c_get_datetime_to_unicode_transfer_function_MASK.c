#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_15__ {int /*<<< orphan*/  elsize; } ;
typedef  int /*<<< orphan*/  PyArray_StridedUnaryOp ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NPY_FAIL ; 
 int /*<<< orphan*/  NPY_NEEDS_INIT ; 
 int /*<<< orphan*/  NPY_STRING ; 
 scalar_t__ NPY_SUCCEED ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC9(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    NpyAuxData *castdata = NULL, *todata = NULL, *fromdata = NULL;
    PyArray_StridedUnaryOp *caststransfer, *tobuffer, *frombuffer;
    PyArray_Descr *str_dtype;

    /* Get an ASCII string data type, adapted to match the UNICODE one */
    str_dtype = FUNC2(NPY_STRING);
    str_dtype = FUNC1(NULL, dst_dtype, str_dtype);
    if (str_dtype == NULL) {
        return NPY_FAIL;
    }

    /* Get the copy/swap operation to dst */
    if (FUNC3(aligned,
                            src_stride, src_dtype->elsize,
                            src_dtype,
                            &tobuffer, &todata) != NPY_SUCCEED) {
        FUNC6(str_dtype);
        return NPY_FAIL;
    }

    /* Get the NBO datetime to string aligned contig function */
    if (FUNC7(1,
                            src_dtype->elsize, str_dtype->elsize,
                            src_dtype, str_dtype,
                            &caststransfer, &castdata) != NPY_SUCCEED) {
        FUNC6(str_dtype);
        FUNC0(todata);
        return NPY_FAIL;
    }

    /* Get the cast operation to dst */
    if (FUNC4(aligned,
                            str_dtype->elsize, dst_stride,
                            str_dtype, dst_dtype,
                            0,
                            &frombuffer, &fromdata,
                            out_needs_api) != NPY_SUCCEED) {
        FUNC6(str_dtype);
        FUNC0(todata);
        FUNC0(castdata);
        return NPY_FAIL;
    }

    /* Wrap it all up in a new transfer function + data */
    if (FUNC8(
                        src_dtype->elsize, str_dtype->elsize,
                        tobuffer, todata,
                        frombuffer, fromdata,
                        caststransfer, castdata,
                        FUNC5(str_dtype, NPY_NEEDS_INIT),
                        out_stransfer, out_transferdata) != NPY_SUCCEED) {
        FUNC0(castdata);
        FUNC0(todata);
        FUNC0(fromdata);
        return NPY_FAIL;
    }

    FUNC6(str_dtype);

    return NPY_SUCCEED;
}