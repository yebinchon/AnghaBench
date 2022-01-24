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
typedef  int /*<<< orphan*/  PyArrayFlagsObject ;

/* Variables and functions */
 int /*<<< orphan*/  PyArrayFlags_Type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int Py_EQ ; 
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int Py_NE ; 
 int /*<<< orphan*/ * Py_NotImplemented ; 
 int /*<<< orphan*/ * Py_True ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject*
FUNC4(PyObject *self, PyObject *other, int cmp_op)
{
    PyObject *result = Py_NotImplemented;
    int cmp;

    if (cmp_op != Py_EQ && cmp_op != Py_NE) {
        FUNC0(PyExc_TypeError,
                        "undefined comparison for flag object");
        return NULL;
    }

    if (FUNC1(other, &PyArrayFlags_Type)) {
        cmp = FUNC3((PyArrayFlagsObject *)self,
                                 (PyArrayFlagsObject *)other);

        if (cmp_op == Py_EQ) {
            result = (cmp == 0) ? Py_True : Py_False;
        }
        else if (cmp_op == Py_NE) {
            result = (cmp != 0) ? Py_True : Py_False;
        }
    }

    FUNC2(result);
    return result;
}