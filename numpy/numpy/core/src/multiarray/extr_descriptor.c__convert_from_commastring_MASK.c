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

/* Variables and functions */
 int NPY_FAIL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static PyArray_Descr *
FUNC11(PyObject *obj, int align)
{
    PyObject *listobj;
    PyArray_Descr *res;
    PyObject *_numpy_internal;

    if (!FUNC1(obj)) {
        return NULL;
    }
    _numpy_internal = FUNC4("numpy.core._internal");
    if (_numpy_internal == NULL) {
        return NULL;
    }
    listobj = FUNC8(_numpy_internal, "_commastring", "O", obj);
    FUNC9(_numpy_internal);
    if (listobj == NULL) {
        return NULL;
    }
    if (!FUNC5(listobj) || FUNC7(listobj) < 1) {
        FUNC3(PyExc_RuntimeError,
                "_commastring is not returning a list with len >= 1");
        FUNC9(listobj);
        return NULL;
    }
    if (FUNC7(listobj) == 1) {
        int retcode;
        retcode = FUNC0(FUNC6(listobj, 0),
                                                &res);
        if (retcode == NPY_FAIL) {
            res = NULL;
        }
    }
    else {
        res = FUNC10(listobj, align);
    }
    FUNC9(listobj);
    if (!res && !FUNC2()) {
        FUNC3(PyExc_ValueError,
                "invalid data-type");
        return NULL;
    }
    return res;
}