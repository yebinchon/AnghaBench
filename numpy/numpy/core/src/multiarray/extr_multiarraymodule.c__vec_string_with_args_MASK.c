#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {int numiter; int /*<<< orphan*/  ao; struct TYPE_32__** iters; int /*<<< orphan*/  dimensions; int /*<<< orphan*/  nd; } ;
typedef  int Py_ssize_t ;
typedef  TYPE_1__ PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  TYPE_1__ PyArrayObject ;
typedef  TYPE_1__ PyArrayMultiIterObject ;
typedef  TYPE_1__ PyArrayIterObject ;

/* Variables and functions */
 int NPY_MAXARGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 TYPE_1__* FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC12 (TYPE_1__*,int) ; 
 int FUNC13 (TYPE_1__*) ; 
 TYPE_1__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC18(PyArrayObject* char_array, PyArray_Descr* type,
                      PyObject* method, PyObject* args)
{
    PyObject* broadcast_args[NPY_MAXARGS];
    PyArrayMultiIterObject* in_iter = NULL;
    PyArrayObject* result = NULL;
    PyArrayIterObject* out_iter = NULL;
    Py_ssize_t i, n, nargs;

    nargs = FUNC13(args) + 1;
    if (nargs == -1 || nargs > NPY_MAXARGS) {
        FUNC9(PyExc_ValueError,
                "len(args) must be < %d", NPY_MAXARGS - 1);
        FUNC16(type);
        goto err;
    }

    broadcast_args[0] = (PyObject*)char_array;
    for (i = 1; i < nargs; i++) {
        PyObject* item = FUNC12(args, i-1);
        if (item == NULL) {
            FUNC16(type);
            goto err;
        }
        broadcast_args[i] = item;
        FUNC16(item);
    }
    in_iter = (PyArrayMultiIterObject*)FUNC3
        (broadcast_args, nargs, 0);
    if (in_iter == NULL) {
        FUNC16(type);
        goto err;
    }
    n = in_iter->numiter;

    result = (PyArrayObject*)FUNC7(in_iter->nd,
            in_iter->dimensions, type);
    if (result == NULL) {
        goto err;
    }

    out_iter = (PyArrayIterObject*)FUNC2((PyObject*)result);
    if (out_iter == NULL) {
        goto err;
    }

    while (FUNC5(in_iter)) {
        PyObject* item_result;
        PyObject* args_tuple = FUNC14(n);
        if (args_tuple == NULL) {
            goto err;
        }

        for (i = 0; i < n; i++) {
            PyArrayIterObject* it = in_iter->iters[i];
            PyObject* arg = FUNC8(FUNC0(it), it->ao);
            if (arg == NULL) {
                FUNC16(args_tuple);
                goto err;
            }
            /* Steals ref to arg */
            FUNC15(args_tuple, i, arg);
        }

        item_result = FUNC11(method, args_tuple);
        FUNC16(args_tuple);
        if (item_result == NULL) {
            goto err;
        }

        if (FUNC6(result, FUNC0(out_iter), item_result)) {
            FUNC16(item_result);
            FUNC10( PyExc_TypeError,
                    "result array type does not match underlying function");
            goto err;
        }
        FUNC16(item_result);

        FUNC4(in_iter);
        FUNC1(out_iter);
    }

    FUNC16(in_iter);
    FUNC16(out_iter);

    return (PyObject*)result;

 err:
    FUNC17(in_iter);
    FUNC17(out_iter);
    FUNC17(result);

    return 0;
}