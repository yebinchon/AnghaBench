#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  ao; int /*<<< orphan*/  dataptr; } ;
typedef  TYPE_1__ PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  TYPE_1__ PyArrayObject ;
typedef  TYPE_1__ PyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 TYPE_1__* FUNC10 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC13(PyArrayObject* char_array,
                                   PyArray_Descr* type, PyObject* method)
{
    /*
     * This is a faster version of _vec_string_args to use when there
     * are no additional arguments to the string method.  This doesn't
     * require a broadcast iterator (and broadcast iterators don't work
     * with 1 argument anyway).
     */
    PyArrayIterObject* in_iter = NULL;
    PyArrayObject* result = NULL;
    PyArrayIterObject* out_iter = NULL;

    in_iter = (PyArrayIterObject*)FUNC4((PyObject*)char_array);
    if (in_iter == NULL) {
        FUNC11(type);
        goto err;
    }

    result = (PyArrayObject*)FUNC7(
            FUNC5(char_array), FUNC0(char_array), type);
    if (result == NULL) {
        goto err;
    }

    out_iter = (PyArrayIterObject*)FUNC4((PyObject*)result);
    if (out_iter == NULL) {
        goto err;
    }

    while (FUNC3(in_iter)) {
        PyObject* item_result;
        PyObject* item = FUNC8(in_iter->dataptr, in_iter->ao);
        if (item == NULL) {
            goto err;
        }

        item_result = FUNC10(method, item, NULL);
        FUNC11(item);
        if (item_result == NULL) {
            goto err;
        }

        if (FUNC6(result, FUNC1(out_iter), item_result)) {
            FUNC11(item_result);
            FUNC9( PyExc_TypeError,
                "result array type does not match underlying function");
            goto err;
        }
        FUNC11(item_result);

        FUNC2(in_iter);
        FUNC2(out_iter);
    }

    FUNC11(in_iter);
    FUNC11(out_iter);

    return (PyObject*)result;

 err:
    FUNC12(in_iter);
    FUNC12(out_iter);
    FUNC12(result);

    return 0;
}