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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

__attribute__((used)) static PyObject *
FUNC6(PyObject *obj)
{
    static PyObject *ndarray_array_function = NULL;
    PyObject *array_function;

    if (ndarray_array_function == NULL) {
        ndarray_array_function = FUNC5();
    }

    /* Fast return for ndarray */
    if (FUNC0(obj)) {
        FUNC4(ndarray_array_function);
        return ndarray_array_function;
    }

    array_function = FUNC1(obj, "__array_function__");
    if (array_function == NULL && FUNC3()) {
        FUNC2(); /* TODO[gh-14801]: propagate crashes during attribute access? */
    }

    return array_function;
}