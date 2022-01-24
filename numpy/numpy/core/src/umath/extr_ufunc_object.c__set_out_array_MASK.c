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
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 

__attribute__((used)) static int
FUNC4(PyObject *obj, PyArrayObject **store)
{
    if (obj == Py_None) {
        /* Translate None to NULL */
        return 0;
    }
    if (FUNC0(obj)) {
        /* If it's an array, store it */
        if (FUNC1((PyArrayObject *)obj,
                                        "output array") < 0) {
            return -1;
        }
        FUNC3(obj);
        *store = (PyArrayObject *)obj;

        return 0;
    }
    FUNC2(PyExc_TypeError, "return arrays must be of ArrayType");

    return -1;
}