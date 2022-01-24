#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_6__ {int /*<<< orphan*/  elsize; } ;
typedef  int /*<<< orphan*/  PyArray_StridedUnaryOp ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NPY_FAIL ; 
 scalar_t__ NPY_SUCCEED ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC3(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            npy_intp N,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyArray_StridedUnaryOp *stransfer;
    NpyAuxData *data;

    /*
     * src_stride and dst_stride are set to contiguous, because
     * subarrays are always contiguous.
     */
    if (FUNC1(aligned,
                    src_dtype->elsize, dst_dtype->elsize,
                    src_dtype, dst_dtype,
                    move_references,
                    &stransfer, &data,
                    out_needs_api) != NPY_SUCCEED) {
        return NPY_FAIL;
    }

    if (FUNC2(stransfer, data,
                            src_stride, dst_stride,
                            src_dtype->elsize, dst_dtype->elsize,
                            N,
                            out_stransfer,
                            out_transferdata) != NPY_SUCCEED) {
        FUNC0(data);
        return NPY_FAIL;
    }

    return NPY_SUCCEED;
}