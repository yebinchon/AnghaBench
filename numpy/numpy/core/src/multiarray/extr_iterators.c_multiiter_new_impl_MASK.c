#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ ao; } ;
struct TYPE_17__ {scalar_t__ numiter; TYPE_3__** iters; } ;
typedef  TYPE_1__ PyObject ;
typedef  TYPE_1__ PyArrayMultiIterObject ;
typedef  TYPE_3__ PyArrayIterObject ;

/* Variables and functions */
 scalar_t__ NPY_MAXARGS ; 
 int /*<<< orphan*/  PyArrayMultiIter_Type ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static PyObject*
FUNC10(int n_args, PyObject **args)
{
    PyArrayMultiIterObject *multi;
    int i;

    multi = FUNC4(sizeof(PyArrayMultiIterObject));
    if (multi == NULL) {
        return FUNC5();
    }
    FUNC6((PyObject *)multi, &PyArrayMultiIter_Type);
    multi->numiter = 0;

    for (i = 0; i < n_args; ++i) {
        PyObject *obj = args[i];
        PyObject *arr;
        PyArrayIterObject *it;

        if (FUNC7(obj, (PyObject *)&PyArrayMultiIter_Type)) {
            PyArrayMultiIterObject *mit = (PyArrayMultiIterObject *)obj;
            int j;

            if (multi->numiter + mit->numiter > NPY_MAXARGS) {
                FUNC9();
                goto fail;
            }
            for (j = 0; j < mit->numiter; ++j) {
                arr = (PyObject *)mit->iters[j]->ao;
                it = (PyArrayIterObject *)FUNC2(arr);
                if (it == NULL) {
                    goto fail;
                }
                multi->iters[multi->numiter++] = it;
            }
        }
        else if (multi->numiter < NPY_MAXARGS) {
            arr = FUNC1(obj, NULL, 0, 0, 0, NULL);
            if (arr == NULL) {
                goto fail;
            }
            it = (PyArrayIterObject *)FUNC2(arr);
            FUNC8(arr);
            if (it == NULL) {
                goto fail;
            }
            multi->iters[multi->numiter++] = it;
        }
        else {
            FUNC9();
            goto fail;
        }
    }

    if (multi->numiter < 0) {
        FUNC9();
        goto fail;
    }
    if (FUNC0(multi) < 0) {
        goto fail;
    }
    FUNC3(multi);

    return (PyObject *)multi;

fail:
    FUNC8(multi);

    return NULL;
}