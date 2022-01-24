#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  op_request_dtypes ;
typedef  int /*<<< orphan*/  op_axes ;
typedef  int /*<<< orphan*/  npy_uint32 ;
struct TYPE_8__ {int started; int finished; int /*<<< orphan*/ * iter; } ;
struct TYPE_7__ {int len; int /*<<< orphan*/ * ptr; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Dims ;
typedef  int PyArray_Descr ;
typedef  int PyArrayObject ;
typedef  TYPE_2__ NewNpyArrayIterObject ;
typedef  int /*<<< orphan*/  NPY_ORDER ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_KEEPORDER ; 
 int NPY_MAXARGS ; 
 int NPY_MAXDIMS ; 
 int /*<<< orphan*/  NPY_SAFE_CASTING ; 
 int /*<<< orphan*/ * FUNC0 (int,int**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int**,int,int**,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NpyIter_GlobalFlagsConverter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  PyArray_CastingConverter ; 
 int /*<<< orphan*/  PyArray_IntpConverter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int**,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int**,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  npyiter_order_converter ; 

__attribute__((used)) static int
FUNC11(NewNpyArrayIterObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"op", "flags", "op_flags", "op_dtypes",
                             "order", "casting", "op_axes", "itershape",
                             "buffersize",
                             NULL};

    PyObject *op_in = NULL, *op_flags_in = NULL,
                *op_dtypes_in = NULL, *op_axes_in = NULL;

    int iop, nop = 0;
    PyArrayObject *op[NPY_MAXARGS];
    npy_uint32 flags = 0;
    NPY_ORDER order = NPY_KEEPORDER;
    NPY_CASTING casting = NPY_SAFE_CASTING;
    npy_uint32 op_flags[NPY_MAXARGS];
    PyArray_Descr *op_request_dtypes[NPY_MAXARGS];
    int oa_ndim = -1;
    int op_axes_arrays[NPY_MAXARGS][NPY_MAXDIMS];
    int *op_axes[NPY_MAXARGS];
    PyArray_Dims itershape = {NULL, 0};
    int buffersize = 0;

    if (self->iter != NULL) {
        FUNC3(PyExc_ValueError,
                "Iterator was already initialized");
        return -1;
    }

    if (!FUNC2(args, kwds, "O|O&OOO&O&OO&i:nditer", kwlist,
                    &op_in,
                    NpyIter_GlobalFlagsConverter, &flags,
                    &op_flags_in,
                    &op_dtypes_in,
                    npyiter_order_converter, &order,
                    PyArray_CastingConverter, &casting,
                    &op_axes_in,
                    PyArray_IntpConverter, &itershape,
                    &buffersize)) {
        FUNC6(itershape);
        return -1;
    }

    /* Set the dtypes and ops to all NULL to start */
    FUNC5(op_request_dtypes, 0, sizeof(op_request_dtypes));

    /* op and op_flags */
    if (FUNC10(op_in, op_flags_in, op, op_flags, &nop)
                                                        != 1) {
        goto fail;
    }

    /* op_request_dtypes */
    if (op_dtypes_in != NULL && op_dtypes_in != Py_None &&
            FUNC8(op_dtypes_in,
                                   op_request_dtypes, nop) != 1) {
        goto fail;
    }

    /* op_axes */
    if (op_axes_in != NULL && op_axes_in != Py_None) {
        /* Initialize to point to the op_axes arrays */
        for (iop = 0; iop < nop; ++iop) {
            op_axes[iop] = op_axes_arrays[iop];
        }

        if (FUNC9(op_axes_in, nop,
                                    op_axes, &oa_ndim) != 1) {
            goto fail;
        }
    }

    if (itershape.len > 0) {
        if (oa_ndim == -1) {
            oa_ndim = itershape.len;
            FUNC5(op_axes, 0, sizeof(op_axes[0]) * nop);
        }
        else if (oa_ndim != itershape.len) {
            FUNC3(PyExc_ValueError,
                        "'op_axes' and 'itershape' must have the same number "
                        "of entries equal to the iterator ndim");
            goto fail;
        }
    }
    else if (itershape.ptr != NULL) {
        FUNC6(itershape);
        itershape.ptr = NULL;
    }

    self->iter = FUNC0(nop, op, flags, order, casting, op_flags,
                                  op_request_dtypes,
                                  oa_ndim, oa_ndim >= 0 ? op_axes : NULL,
                                  itershape.ptr,
                                  buffersize);

    if (self->iter == NULL) {
        goto fail;
    }

    /* Cache some values for the member functions to use */
    if (FUNC7(self) < 0) {
        goto fail;
    }

    if (FUNC1(self->iter) == 0) {
        self->started = 1;
        self->finished = 1;
    }
    else {
        self->started = 0;
        self->finished = 0;
    }

    FUNC6(itershape);

    /* Release the references we got to the ops and dtypes */
    for (iop = 0; iop < nop; ++iop) {
        FUNC4(op[iop]);
        FUNC4(op_request_dtypes[iop]);
    }

    return 0;

fail:
    FUNC6(itershape);
    for (iop = 0; iop < nop; ++iop) {
        FUNC4(op[iop]);
        FUNC4(op_request_dtypes[iop]);
    }
    return -1;
}