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
typedef  int /*<<< orphan*/  PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC5(PyUFuncObject *ufunc, PyArrayObject **operands) {
    static PyObject *exc_type = NULL;
    PyObject *exc_value;

    FUNC4(
        "numpy.core._exceptions", "_UFuncBinaryResolutionError",
        &exc_type);
    if (exc_type == NULL) {
        return -1;
    }

    /* produce an error object */
    exc_value = FUNC2(
        "O(OO)", ufunc,
        (PyObject *)FUNC0(operands[0]),
        (PyObject *)FUNC0(operands[1])
    );
    if (exc_value == NULL){
        return -1;
    }
    FUNC1(exc_type, exc_value);
    FUNC3(exc_value);

    return -1;
}