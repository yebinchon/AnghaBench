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
typedef  int /*<<< orphan*/  ufunc_full_args ;
typedef  int /*<<< orphan*/  npy_uint32 ;
typedef  int npy_intp ;
struct TYPE_6__ {int nin; int nout; scalar_t__ (* legacy_inner_loop_selector ) (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,void**,int*) ;} ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyUFuncGenericFunction ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  scalar_t__ NPY_ORDER ;

/* Variables and functions */
 scalar_t__ NPY_ANYORDER ; 
 int /*<<< orphan*/  NPY_ARRAY_F_CONTIGUOUS ; 
 scalar_t__ NPY_KEEPORDER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_TRIVIALLY_ITERABLE_OP_NOREAD ; 
 int /*<<< orphan*/  PyArray_TRIVIALLY_ITERABLE_OP_READ ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (void*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,scalar_t__,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,void**,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC15(PyUFuncObject *ufunc,
                    int trivial_loop_ok,
                    PyArrayObject **op,
                    PyArray_Descr **dtypes,
                    NPY_ORDER order,
                    npy_intp buffersize,
                    PyObject **arr_prep,
                    ufunc_full_args full_args,
                    npy_uint32 *op_flags)
{
    npy_intp nin = ufunc->nin, nout = ufunc->nout;
    PyUFuncGenericFunction innerloop;
    void *innerloopdata;
    int needs_api = 0;

    if (ufunc->legacy_inner_loop_selector(ufunc, dtypes,
                    &innerloop, &innerloopdata, &needs_api) < 0) {
        return -1;
    }
    /* If the loop wants the arrays, provide them. */
    if (FUNC9(innerloopdata)) {
        innerloopdata = (void*)op;
    }

    /* First check for the trivial cases that don't need an iterator */
    if (trivial_loop_ok) {
        if (nin == 1 && nout == 1) {
            if (op[1] == NULL &&
                        (order == NPY_ANYORDER || order == NPY_KEEPORDER) &&
                        FUNC5(op[0])) {
                FUNC8(dtypes[1]);
                op[1] = (PyArrayObject *)FUNC4(&PyArray_Type,
                             dtypes[1],
                             FUNC3(op[0]),
                             FUNC1(op[0]),
                             NULL, NULL,
                             FUNC2(op[0]) ?
                                            NPY_ARRAY_F_CONTIGUOUS : 0,
                             NULL);
                if (op[1] == NULL) {
                    return -1;
                }

                /* Call the __prepare_array__ if necessary */
                if (FUNC11(ufunc, &op[1],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                FUNC0("trivial 1 input with allocated output\n");
                FUNC14(op, innerloop, innerloopdata);

                return 0;
            }
            else if (op[1] != NULL &&
                        FUNC3(op[1]) >= FUNC3(op[0]) &&
                        FUNC6(op[0], op[1],
                                                        PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                        PyArray_TRIVIALLY_ITERABLE_OP_NOREAD)) {

                /* Call the __prepare_array__ if necessary */
                if (FUNC11(ufunc, &op[1],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                FUNC0("trivial 1 input\n");
                FUNC14(op, innerloop, innerloopdata);

                return 0;
            }
        }
        else if (nin == 2 && nout == 1) {
            if (op[2] == NULL &&
                        (order == NPY_ANYORDER || order == NPY_KEEPORDER) &&
                        FUNC6(op[0], op[1],
                                                        PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                        PyArray_TRIVIALLY_ITERABLE_OP_READ)) {
                PyArrayObject *tmp;
                /*
                 * Have to choose the input with more dimensions to clone, as
                 * one of them could be a scalar.
                 */
                if (FUNC3(op[0]) >= FUNC3(op[1])) {
                    tmp = op[0];
                }
                else {
                    tmp = op[1];
                }
                FUNC8(dtypes[2]);
                op[2] = (PyArrayObject *)FUNC4(&PyArray_Type,
                                 dtypes[2],
                                 FUNC3(tmp),
                                 FUNC1(tmp),
                                 NULL, NULL,
                                 FUNC2(tmp) ?
                                                NPY_ARRAY_F_CONTIGUOUS : 0,
                                 NULL);
                if (op[2] == NULL) {
                    return -1;
                }

                /* Call the __prepare_array__ if necessary */
                if (FUNC11(ufunc, &op[2],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                FUNC0("trivial 2 input with allocated output\n");
                FUNC13(op, innerloop, innerloopdata);

                return 0;
            }
            else if (op[2] != NULL &&
                    FUNC3(op[2]) >= FUNC3(op[0]) &&
                    FUNC3(op[2]) >= FUNC3(op[1]) &&
                    FUNC7(op[0], op[1], op[2],
                                                      PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                      PyArray_TRIVIALLY_ITERABLE_OP_READ,
                                                      PyArray_TRIVIALLY_ITERABLE_OP_NOREAD)) {

                /* Call the __prepare_array__ if necessary */
                if (FUNC11(ufunc, &op[2],
                                    arr_prep[0], full_args, 0) < 0) {
                    return -1;
                }

                FUNC0("trivial 2 input\n");
                FUNC13(op, innerloop, innerloopdata);

                return 0;
            }
        }
    }

    /*
     * If no trivial loop matched, an iterator is required to
     * resolve broadcasting, etc
     */

    FUNC0("iterator loop\n");
    if (FUNC10(ufunc, op, dtypes, order,
                    buffersize, arr_prep, full_args,
                    innerloop, innerloopdata, op_flags) < 0) {
        return -1;
    }

    return 0;
}