#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_longlong ;
struct TYPE_5__ {int nin; scalar_t__ core_enabled; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_NOTYPE ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC16 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC21(PyUFuncObject *ufunc, PyObject *args, PyObject *kwds)
{
    int i;
    int errval;
    PyObject *override = NULL;
    PyObject *ret;
    PyArrayObject *ap1 = NULL, *ap2 = NULL, *ap_new = NULL;
    PyObject *new_args, *tmp;
    PyObject *shape1, *shape2, *newshape;
    static PyObject *_numpy_matrix;


    errval = FUNC15(ufunc, "outer", args, kwds, &override);
    if (errval) {
        return NULL;
    }
    else if (override) {
        return override;
    }

    if (ufunc->core_enabled) {
        FUNC5(PyExc_TypeError,
                     "method outer is not allowed in ufunc with non-trivial"\
                     " signature");
        return NULL;
    }

    if (ufunc->nin != 2) {
        FUNC6(PyExc_ValueError,
                        "outer product only supported "\
                        "for binary functions");
        return NULL;
    }

    if (FUNC12(args) != 2) {
        FUNC6(PyExc_TypeError, "exactly two arguments expected");
        return NULL;
    }

    tmp = FUNC11(args, 0);
    if (tmp == NULL) {
        return NULL;
    }

    FUNC19(
        "numpy",
        "matrix",
        &_numpy_matrix);

    if (FUNC10(tmp, _numpy_matrix)) {
        ap1 = (PyArrayObject *) FUNC2(tmp, NPY_NOTYPE, 0, 0);
    }
    else {
        ap1 = (PyArrayObject *) FUNC1(tmp);
    }
    FUNC17(tmp);
    if (ap1 == NULL) {
        return NULL;
    }
    tmp = FUNC11(args, 1);
    if (tmp == NULL) {
        return NULL;
    }
    if (FUNC10(tmp, _numpy_matrix)) {
        ap2 = (PyArrayObject *) FUNC2(tmp, NPY_NOTYPE, 0, 0);
    }
    else {
        ap2 = (PyArrayObject *) FUNC1(tmp);
    }
    FUNC17(tmp);
    if (ap2 == NULL) {
        FUNC17(ap1);
        return NULL;
    }
    /* Construct new shape tuple */
    shape1 = FUNC13(FUNC3(ap1));
    if (shape1 == NULL) {
        goto fail;
    }
    for (i = 0; i < FUNC3(ap1); i++) {
        FUNC14(shape1, i,
                FUNC8((npy_longlong)FUNC0(ap1)[i]));
    }
    shape2 = FUNC13(FUNC3(ap2));
    for (i = 0; i < FUNC3(ap2); i++) {
        FUNC14(shape2, i, FUNC7((long) 1));
    }
    if (shape2 == NULL) {
        FUNC17(shape1);
        goto fail;
    }
    newshape = FUNC9(shape1, shape2);
    FUNC17(shape1);
    FUNC17(shape2);
    if (newshape == NULL) {
        goto fail;
    }
    ap_new = (PyArrayObject *)FUNC4(ap1, newshape);
    FUNC17(newshape);
    if (ap_new == NULL) {
        goto fail;
    }
    new_args = FUNC16("(OO)", ap_new, ap2);
    FUNC17(ap1);
    FUNC17(ap2);
    FUNC17(ap_new);
    ret = FUNC20(ufunc, new_args, kwds);
    FUNC17(new_args);
    return ret;

 fail:
    FUNC18(ap1);
    FUNC18(ap2);
    FUNC18(ap_new);
    return NULL;
}