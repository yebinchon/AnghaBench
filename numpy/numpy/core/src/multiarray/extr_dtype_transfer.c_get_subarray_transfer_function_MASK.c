#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_intp ;
struct TYPE_21__ {TYPE_1__* subarray; } ;
struct TYPE_20__ {int member_1; scalar_t__ len; int /*<<< orphan*/  ptr; int /*<<< orphan*/ * member_0; } ;
struct TYPE_19__ {TYPE_3__* base; int /*<<< orphan*/  shape; } ;
typedef  int /*<<< orphan*/  PyArray_StridedUnaryOp ;
typedef  TYPE_2__ PyArray_Dims ;
typedef  TYPE_3__ PyArray_Descr ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int NPY_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int,int,int,TYPE_3__*,TYPE_3__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int FUNC6 (int,int,int,TYPE_3__*,TYPE_3__*,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int FUNC7 (int,int,int,TYPE_3__*,TYPE_3__*,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int FUNC8 (int,int,int,TYPE_3__*,TYPE_3__*,int,int,TYPE_2__,TYPE_2__,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__) ; 

__attribute__((used)) static int
FUNC10(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyArray_Dims src_shape = {NULL, -1}, dst_shape = {NULL, -1};
    npy_intp src_size = 1, dst_size = 1;

    /* Get the subarray shapes and sizes */
    if (FUNC4(src_dtype)) {
        if (!(FUNC2(src_dtype->subarray->shape,
                                            &src_shape))) {
            FUNC5(PyExc_ValueError,
                    "invalid subarray shape");
            return NPY_FAIL;
        }
        src_size = FUNC3(src_shape.ptr, src_shape.len);
        src_dtype = src_dtype->subarray->base;
    }
    if (FUNC4(dst_dtype)) {
        if (!(FUNC2(dst_dtype->subarray->shape,
                                            &dst_shape))) {
            FUNC9(src_shape);
            FUNC5(PyExc_ValueError,
                    "invalid subarray shape");
            return NPY_FAIL;
        }
        dst_size = FUNC3(dst_shape.ptr, dst_shape.len);
        dst_dtype = dst_dtype->subarray->base;
    }

    /*
     * Just a straight one-element copy.
     */
    if (dst_size == 1 && src_size == 1) {
        FUNC9(src_shape);
        FUNC9(dst_shape);

        return FUNC1(aligned,
                src_stride, dst_stride,
                src_dtype, dst_dtype,
                move_references,
                out_stransfer, out_transferdata,
                out_needs_api);
    }
    /* Copy the src value to all the dst values */
    else if (src_size == 1) {
        FUNC9(src_shape);
        FUNC9(dst_shape);

        return FUNC7(aligned,
                        src_stride, dst_stride,
                        src_dtype, dst_dtype,
                        move_references,
                        dst_size,
                        out_stransfer, out_transferdata,
                        out_needs_api);
    }
    /* If the shapes match exactly, do an n to n copy */
    else if (src_shape.len == dst_shape.len &&
               FUNC0(src_shape.ptr, dst_shape.ptr,
                                                    src_shape.len)) {
        FUNC9(src_shape);
        FUNC9(dst_shape);

        return FUNC6(aligned,
                        src_stride, dst_stride,
                        src_dtype, dst_dtype,
                        move_references,
                        src_size,
                        out_stransfer, out_transferdata,
                        out_needs_api);
    }
    /*
     * Copy the subarray with broadcasting, truncating, and zero-padding
     * as necessary.
     */
    else {
        int ret = FUNC8(aligned,
                        src_stride, dst_stride,
                        src_dtype, dst_dtype,
                        src_size, dst_size,
                        src_shape, dst_shape,
                        move_references,
                        out_stransfer, out_transferdata,
                        out_needs_api);

        FUNC9(src_shape);
        FUNC9(dst_shape);
        return ret;
    }
}