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
typedef  int /*<<< orphan*/  ufunc_full_args ;
typedef  int /*<<< orphan*/  PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(PyUFuncObject *ufunc,
                    PyArrayObject **op,
                    PyObject *arr_prep,
                    ufunc_full_args full_args,
                    int i)
{
    if (arr_prep != NULL && arr_prep != Py_None) {
        PyObject *res;
        PyArrayObject *arr;
        PyObject *args_tup;

        /* Call with the context argument */
        args_tup = FUNC10(full_args);
        if (args_tup == NULL) {
            return -1;
        }
        res = FUNC8(
            arr_prep, "O(OOi)", *op, ufunc, args_tup, i);
        FUNC9(args_tup);

        if (res == NULL) {
            return -1;
        }
        else if (!FUNC0(res)) {
            FUNC7(PyExc_TypeError,
                    "__array_prepare__ must return an "
                    "ndarray or subclass thereof");
            FUNC9(res);
            return -1;
        }
        arr = (PyArrayObject *)res;

        /* If the same object was returned, nothing to do */
        if (arr == *op) {
            FUNC9(arr);
        }
        /* If the result doesn't match, throw an error */
        else if (FUNC5(arr) != FUNC5(*op) ||
                !FUNC1(FUNC3(arr),
                                      FUNC3(*op),
                                      FUNC5(arr)) ||
                !FUNC1(FUNC6(arr),
                                      FUNC6(*op),
                                      FUNC5(arr)) ||
                !FUNC4(FUNC2(arr),
                                    FUNC2(*op))) {
            FUNC7(PyExc_TypeError,
                    "__array_prepare__ must return an "
                    "ndarray or subclass thereof which is "
                    "otherwise identical to its input");
            FUNC9(arr);
            return -1;
        }
        /* Replace the op value */
        else {
            FUNC9(*op);
            *op = arr;
        }
    }

    return 0;
}