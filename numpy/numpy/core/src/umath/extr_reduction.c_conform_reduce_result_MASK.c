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
typedef  int npy_intp ;
typedef  scalar_t__ npy_bool ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject_fields ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ANYORDER ; 
 int NPY_MAXDIMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArrayObject *
FUNC14(int ndim, const npy_bool *axis_flags,
                      PyArrayObject *out, int keepdims, const char *funcname,
                      int need_copy)
{
    npy_intp strides[NPY_MAXDIMS], shape[NPY_MAXDIMS];
    npy_intp *strides_out = FUNC8(out);
    npy_intp *shape_out = FUNC3(out);
    int idim, idim_out, ndim_out = FUNC5(out);
    PyArray_Descr *dtype;
    PyArrayObject_fields *ret;

    /*
     * If the 'keepdims' parameter is true, do a simpler validation and
     * return a new reference to 'out'.
     */
    if (keepdims) {
        if (FUNC5(out) != ndim) {
            FUNC11(PyExc_ValueError,
                    "output parameter for reduction operation %s "
                    "has the wrong number of dimensions (must match "
                    "the operand's when keepdims=True)", funcname);
            return NULL;
        }

        for (idim = 0; idim < ndim; ++idim) {
            if (axis_flags[idim]) {
                if (shape_out[idim] != 1) {
                    FUNC11(PyExc_ValueError,
                            "output parameter for reduction operation %s "
                            "has a reduction dimension not equal to one "
                            "(required when keepdims=True)", funcname);
                    return NULL;
                }
            }
        }

        FUNC13(out);
        return out;
    }

    /* Construct the strides and shape */
    idim_out = 0;
    for (idim = 0; idim < ndim; ++idim) {
        if (axis_flags[idim]) {
            strides[idim] = 0;
            shape[idim] = 1;
        }
        else {
            if (idim_out >= ndim_out) {
                FUNC11(PyExc_ValueError,
                        "output parameter for reduction operation %s "
                        "does not have enough dimensions", funcname);
                return NULL;
            }
            strides[idim] = strides_out[idim_out];
            shape[idim] = shape_out[idim_out];
            ++idim_out;
        }
    }

    if (idim_out != ndim_out) {
        FUNC11(PyExc_ValueError,
                "output parameter for reduction operation %s "
                "has too many dimensions", funcname);
        return NULL;
    }

    /* Allocate the view */
    dtype = FUNC2(out);
    FUNC13(dtype);

    /* TODO: use PyArray_NewFromDescrAndBase here once multiarray and umath
     *       are merged
     */
    ret = (PyArrayObject_fields *)FUNC6(
            &PyArray_Type, dtype,
            ndim, shape, strides, FUNC1(out),
            FUNC4(out), NULL);
    if (ret == NULL) {
        return NULL;
    }

    FUNC13(out);
    if (FUNC9((PyArrayObject *)ret, (PyObject *)out) < 0) {
        FUNC12(ret);
        return NULL;
    }

    if (need_copy) {
        PyArrayObject *ret_copy;

        ret_copy = (PyArrayObject *)FUNC7(
            (PyArrayObject *)ret, NPY_ANYORDER, NULL, 0);
        if (ret_copy == NULL) {
            FUNC12(ret);
            return NULL;
        }

        if (FUNC0(ret_copy, (PyArrayObject *)ret) != 0) {
            FUNC12(ret);
            FUNC12(ret_copy);
            return NULL;
        }

        if (FUNC10(ret_copy, (PyArrayObject *)ret) < 0) {
            FUNC12(ret);
            FUNC12(ret_copy);
            return NULL;
        }

        return ret_copy;
    }
    else {
        return (PyArrayObject *)ret;
    }
}