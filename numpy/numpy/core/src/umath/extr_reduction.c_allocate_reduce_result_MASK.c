#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  shape ;
struct TYPE_8__ {size_t perm; } ;
typedef  TYPE_1__ npy_stride_sort_item ;
typedef  size_t npy_intp ;
typedef  scalar_t__ npy_bool ;
struct TYPE_9__ {size_t elsize; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_MAXDIMS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 size_t* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,size_t*,int) ; 

__attribute__((used)) static PyArrayObject *
FUNC9(PyArrayObject *arr, const npy_bool *axis_flags,
                        PyArray_Descr *dtype, int subok)
{
    npy_intp strides[NPY_MAXDIMS], stride;
    npy_intp shape[NPY_MAXDIMS], *arr_shape = FUNC1(arr);
    npy_stride_sort_item strideperm[NPY_MAXDIMS];
    int idim, ndim = FUNC3(arr);

    if (dtype == NULL) {
        dtype = FUNC2(arr);
        FUNC6(dtype);
    }

    FUNC0(FUNC3(arr),
                                    FUNC5(arr), strideperm);

    /* Build the new strides and shape */
    stride = dtype->elsize;
    if (ndim) {
        FUNC8(shape, arr_shape, ndim * sizeof(shape[0]));
    }
    for (idim = ndim-1; idim >= 0; --idim) {
        npy_intp i_perm = strideperm[idim].perm;
        if (axis_flags[i_perm]) {
            strides[i_perm] = 0;
            shape[i_perm] = 1;
        }
        else {
            strides[i_perm] = stride;
            stride *= shape[i_perm];
        }
    }

    /* Finally, allocate the array */
    return (PyArrayObject *)FUNC4(
                                    subok ? FUNC7(arr) : &PyArray_Type,
                                    dtype, ndim, shape, strides,
                                    NULL, 0, subok ? (PyObject *)arr : NULL);
}