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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC6(PyObject *obj, PyObject *method,
                         PyObject *input_method) {
    if (obj != Py_None) {
        PyObject *ometh;

        if (FUNC0(obj)) {
            /*
             * No need to wrap regular arrays - None signals to not call
             * wrap/prepare at all
             */
            Py_RETURN_NONE;
        }

        ometh = FUNC3(obj, method);
        if (ometh == NULL) {
            FUNC2();
        }
        else if (!FUNC1(ometh)) {
            FUNC4(ometh);
        }
        else {
            /* Use the wrap/prepare method of the output if it's callable */
            return ometh;
        }
    }

    /* Fall back on the input's wrap/prepare */
    FUNC5(input_method);
    return input_method;
}