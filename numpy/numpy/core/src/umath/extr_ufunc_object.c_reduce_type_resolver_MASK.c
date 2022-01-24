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
struct TYPE_5__ {int (* type_resolver ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ;} ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_UNSAFE_CASTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_None ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(PyUFuncObject *ufunc, PyArrayObject *arr,
                        PyArray_Descr *odtype, PyArray_Descr **out_dtype)
{
    int i, retcode;
    PyArrayObject *op[3] = {arr, arr, NULL};
    PyArray_Descr *dtypes[3] = {NULL, NULL, NULL};
    const char *ufunc_name = FUNC5(ufunc);
    PyObject *type_tup = NULL;

    *out_dtype = NULL;

    /*
     * If odtype is specified, make a type tuple for the type
     * resolution.
     */
    if (odtype != NULL) {
        type_tup = FUNC2(3, odtype, odtype, Py_None);
        if (type_tup == NULL) {
            return -1;
        }
    }

    /* Use the type resolution function to find our loop */
    retcode = ufunc->type_resolver(
                        ufunc, NPY_UNSAFE_CASTING,
                        op, type_tup, dtypes);
    FUNC3(type_tup);
    if (retcode == -1) {
        return -1;
    }
    else if (retcode == -2) {
        FUNC1(PyExc_RuntimeError,
                "type resolution returned NotImplemented to "
                "reduce ufunc %s", ufunc_name);
        return -1;
    }

    /*
     * The first two type should be equivalent. Because of how
     * reduce has historically behaved in NumPy, the return type
     * could be different, and it is the return type on which the
     * reduction occurs.
     */
    if (!FUNC0(dtypes[0], dtypes[1])) {
        for (i = 0; i < 3; ++i) {
            FUNC3(dtypes[i]);
        }
        FUNC1(PyExc_RuntimeError,
                "could not find a type resolution appropriate for "
                "reduce ufunc %s", ufunc_name);
        return -1;
    }

    FUNC3(dtypes[0]);
    FUNC3(dtypes[1]);
    *out_dtype = dtypes[2];

    return 0;
}