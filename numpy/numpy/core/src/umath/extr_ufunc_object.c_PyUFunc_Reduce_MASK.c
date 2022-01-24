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
typedef  int npy_bool ;
typedef  int /*<<< orphan*/  PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_MAXDIMS ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  NPY_UNSAFE_CASTING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  reduce_loop ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArrayObject *
FUNC14(PyUFuncObject *ufunc, PyArrayObject *arr, PyArrayObject *out,
        int naxes, int *axes, PyArray_Descr *odtype, int keepdims,
        PyObject *initial, PyArrayObject *wheremask)
{
    int iaxes, ndim;
    npy_bool reorderable;
    npy_bool axis_flags[NPY_MAXDIMS];
    PyArray_Descr *dtype;
    PyArrayObject *result;
    PyObject *identity;
    const char *ufunc_name = FUNC13(ufunc);
    /* These parameters come from a TLS global */
    int buffersize = 0, errormask = 0;
    static PyObject *NoValue = NULL;

    FUNC0("\nEvaluating ufunc %s.reduce\n", ufunc_name);

    FUNC11("numpy", "_NoValue", &NoValue);
    if (NoValue == NULL) return NULL;

    ndim = FUNC2(arr);

    /* Create an array of flags for reduction */
    FUNC10(axis_flags, 0, ndim);
    for (iaxes = 0; iaxes < naxes; ++iaxes) {
        int axis = axes[iaxes];
        if (axis_flags[axis]) {
            FUNC4(PyExc_ValueError,
                    "duplicate value in 'axis'");
            return NULL;
        }
        axis_flags[axis] = 1;
    }

    if (FUNC8(NULL, "reduce", &buffersize, &errormask) < 0) {
        return NULL;
    }

    /* Get the identity */
    identity = FUNC9(ufunc, &reorderable);
    if (identity == NULL) {
        return NULL;
    }

    /* Get the initial value */
    if (initial == NULL || initial == NoValue) {
        initial = identity;

        /*
        * The identity for a dynamic dtype like
        * object arrays can't be used in general
        */
        if (initial != Py_None && FUNC1(arr) && FUNC3(arr) != 0) {
            FUNC6(initial);
            initial = Py_None;
            FUNC7(initial);
        }
    } else {
        FUNC6(identity);
        FUNC7(initial);  /* match the reference count in the if above */
    }

    /* Get the reduction dtype */
    if (FUNC12(ufunc, arr, odtype, &dtype) < 0) {
        FUNC6(initial);
        return NULL;
    }

    result = FUNC5(arr, out, wheremask, dtype, dtype,
                                   NPY_UNSAFE_CASTING,
                                   axis_flags, reorderable,
                                   keepdims, 0,
                                   initial,
                                   reduce_loop,
                                   ufunc, buffersize, ufunc_name, errormask);

    FUNC6(dtype);
    FUNC6(initial);
    return result;
}