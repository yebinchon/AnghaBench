#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  out_i; int /*<<< orphan*/  ufunc; int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ _ufunc_context ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC8(
            PyObject *wrap, PyArrayObject *obj, _ufunc_context const *context) {
    if (wrap == NULL) {
        /* default behavior */
        return FUNC0(obj);
    }
    else if (wrap == Py_None) {
        FUNC5(wrap);
        return (PyObject *)obj;
    }
    else {
        PyObject *res;
        PyObject *py_context = NULL;

        /* Convert the context object to a tuple, if present */
        if (context == NULL) {
            py_context = Py_None;
            FUNC6(py_context);
        }
        else {
            PyObject *args_tup;
            /* Call the method with appropriate context */
            args_tup = FUNC7(context->args);
            if (args_tup == NULL) {
                goto fail;
            }
            py_context = FUNC4("OOi",
                context->ufunc, args_tup, context->out_i);
            FUNC5(args_tup);
            if (py_context == NULL) {
                goto fail;
            }
        }
        /* try __array_wrap__(obj, context) */
        res = FUNC3(wrap, obj, py_context, NULL);
        FUNC5(py_context);

        /* try __array_wrap__(obj) if the context argument is not accepted  */
        if (res == NULL && FUNC2(PyExc_TypeError)) {
            FUNC1();
            res = FUNC3(wrap, obj, NULL);
        }
        FUNC5(wrap);
        FUNC5(obj);
        return res;
    fail:
        FUNC5(wrap);
        FUNC5(obj);
        return NULL;
    }
}