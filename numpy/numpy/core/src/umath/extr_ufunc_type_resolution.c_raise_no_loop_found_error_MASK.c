#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t npy_intp ;
struct TYPE_4__ {size_t nargs; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC7(
        PyUFuncObject *ufunc, PyArray_Descr **dtypes)
{
    static PyObject *exc_type = NULL;
    PyObject *exc_value;
    PyObject *dtypes_tup;
    npy_intp i;

    FUNC6(
        "numpy.core._exceptions", "_UFuncNoLoopError",
        &exc_type);
    if (exc_type == NULL) {
        return -1;
    }

    /* convert dtypes to a tuple */
    dtypes_tup = FUNC1(ufunc->nargs);
    if (dtypes_tup == NULL) {
        return -1;
    }
    for (i = 0; i < ufunc->nargs; ++i) {
        FUNC5(dtypes[i]);
        FUNC3(dtypes_tup, i, (PyObject *)dtypes[i]);
    }

    /* produce an error object */
    exc_value = FUNC2(2, ufunc, dtypes_tup);
    FUNC4(dtypes_tup);
    if (exc_value == NULL){
        return -1;
    }
    FUNC0(exc_type, exc_value);
    FUNC4(exc_value);

    return -1;
}