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
typedef  int /*<<< orphan*/  npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static PyObject *
FUNC7(int nd, npy_intp *dims, PyArray_Descr *descr)
{
    static PyObject *exc_type = NULL;

    FUNC6(
        "numpy.core._exceptions", "_ArrayMemoryError",
        &exc_type);
    if (exc_type == NULL) {
        goto fail;
    }

    PyObject *shape = FUNC0(nd, dims);
    if (shape == NULL) {
        goto fail;
    }

    /* produce an error object */
    PyObject *exc_value = FUNC4(2, shape, (PyObject *)descr);
    FUNC5(shape);
    if (exc_value == NULL){
        goto fail;
    }
    FUNC2(exc_type, exc_value);
    FUNC5(exc_value);
    return NULL;

fail:
    /* we couldn't raise the formatted exception for some reason */
    FUNC3(NULL);
    return FUNC1();
}