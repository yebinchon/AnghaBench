#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_12__ {int /*<<< orphan*/  elsize; } ;
typedef  int /*<<< orphan*/  PyArray_StridedUnaryOp ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NPY_FAIL ; 
 int /*<<< orphan*/  NPY_NEEDS_INIT ; 
 scalar_t__ NPY_SUCCEED ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC9(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyArray_StridedUnaryOp *caststransfer;
    NpyAuxData *castdata, *todata = NULL, *fromdata = NULL;
    int needs_wrap = 0;
    npy_intp src_itemsize = src_dtype->elsize,
            dst_itemsize = dst_dtype->elsize;

    if (FUNC7(aligned,
                            src_stride, dst_stride,
                            src_dtype, dst_dtype,
                            move_references,
                            &caststransfer,
                            &castdata,
                            out_needs_api,
                            &needs_wrap) != NPY_SUCCEED) {
        return NPY_FAIL;
    }

    /*
     * If all native byte order and doesn't need alignment wrapping,
     * return the function
     */
    if (!needs_wrap) {
        *out_stransfer = caststransfer;
        *out_transferdata = castdata;

        return NPY_SUCCEED;
    }
    /* Otherwise, we have to copy and/or swap to aligned temporaries */
    else {
        PyArray_StridedUnaryOp *tobuffer, *frombuffer;

        /* Get the copy/swap operation from src */
        FUNC1(aligned,
                                src_stride, src_itemsize,
                                src_dtype,
                                &tobuffer, &todata);

        if (!FUNC5(dst_dtype)) {
            /* Copying from buffer is a simple copy/swap operation */
            FUNC1(aligned,
                                    dst_itemsize, dst_stride,
                                    dst_dtype,
                                    &frombuffer, &fromdata);
        }
        else {
            /*
             * Since the buffer is initialized to NULL, need to move the
             * references in order to DECREF the existing data.
             */
             /* Object types cannot be byte swapped */
            FUNC6(FUNC4(dst_dtype));
            /* The loop already needs the python api if this is reached */
            FUNC6(*out_needs_api);

            if (FUNC2(
                    aligned, dst_itemsize, dst_stride,
                    dst_dtype, dst_dtype, 1,
                    &frombuffer, &fromdata, out_needs_api) != NPY_SUCCEED) {
                return NPY_FAIL;
            }
        }

        if (frombuffer == NULL || tobuffer == NULL) {
            FUNC0(castdata);
            FUNC0(todata);
            FUNC0(fromdata);
            return NPY_FAIL;
        }

        *out_stransfer = caststransfer;

        /* Wrap it all up in a new transfer function + data */
        if (FUNC8(
                            src_itemsize, dst_itemsize,
                            tobuffer, todata,
                            frombuffer, fromdata,
                            caststransfer, castdata,
                            FUNC3(dst_dtype, NPY_NEEDS_INIT),
                            out_stransfer, out_transferdata) != NPY_SUCCEED) {
            FUNC0(castdata);
            FUNC0(todata);
            FUNC0(fromdata);
            return NPY_FAIL;
        }

        return NPY_SUCCEED;
    }
}