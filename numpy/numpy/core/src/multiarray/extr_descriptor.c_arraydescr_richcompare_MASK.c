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
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 scalar_t__ NPY_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  Py_EQ 133 
 int /*<<< orphan*/ * Py_False ; 
#define  Py_GE 132 
#define  Py_GT 131 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  Py_LE 130 
#define  Py_LT 129 
#define  Py_NE 128 
 int /*<<< orphan*/ * Py_NotImplemented ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC6(PyArray_Descr *self, PyObject *other, int cmp_op)
{
    PyArray_Descr *new = NULL;
    PyObject *result = Py_NotImplemented;
    if (!FUNC1(other)) {
        if (FUNC2(other, &new) == NPY_FAIL) {
            return NULL;
        }
    }
    else {
        new = (PyArray_Descr *)other;
        FUNC4(new);
    }
    switch (cmp_op) {
    case Py_LT:
        if (!FUNC3(self, new) && FUNC0(self, new)) {
            result = Py_True;
        }
        else {
            result = Py_False;
        }
        break;
    case Py_LE:
        if (FUNC0(self, new)) {
            result = Py_True;
        }
        else {
            result = Py_False;
        }
        break;
    case Py_EQ:
        if (FUNC3(self, new)) {
            result = Py_True;
        }
        else {
            result = Py_False;
        }
        break;
    case Py_NE:
        if (FUNC3(self, new))
            result = Py_False;
        else
            result = Py_True;
        break;
    case Py_GT:
        if (!FUNC3(self, new) && FUNC0(new, self)) {
            result = Py_True;
        }
        else {
            result = Py_False;
        }
        break;
    case Py_GE:
        if (FUNC0(new, self)) {
            result = Py_True;
        }
        else {
            result = Py_False;
        }
        break;
    default:
        result = Py_NotImplemented;
    }

    FUNC5(new);
    FUNC4(result);
    return result;
}