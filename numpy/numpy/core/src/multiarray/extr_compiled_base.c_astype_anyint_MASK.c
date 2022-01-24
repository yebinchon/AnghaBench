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
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SEQUENCE_ERR_MSG ; 
 int /*<<< orphan*/  NON_INTEGRAL_ERROR_MSG ; 
 int /*<<< orphan*/  NPY_MAXDIMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArrayObject *
FUNC10(PyObject *obj) {
    PyArrayObject *ret;

    if (!FUNC0(obj)) {
        /* prefer int dtype */
        PyArray_Descr *dtype_guess = NULL;
        if (FUNC1(obj, NPY_MAXDIMS, &dtype_guess) < 0) {
            return NULL;
        }
        if (dtype_guess == NULL) {
            if (FUNC6(obj) && FUNC7(obj) == 0) {
                FUNC5(PyExc_TypeError, EMPTY_SEQUENCE_ERR_MSG);
            }
            return NULL;
        }
        ret = (PyArrayObject*)FUNC2(obj, dtype_guess, 0, 0, 0, NULL);
        if (ret == NULL) {
            return NULL;
        }
    }
    else {
        ret = (PyArrayObject *)obj;
        FUNC9(ret);
    }

    if (!(FUNC4(ret) || FUNC3(ret))) {
        /* ensure dtype is int-based */
        FUNC5(PyExc_TypeError, NON_INTEGRAL_ERROR_MSG);
        FUNC8(ret);
        return NULL;
    }

    return ret;
}