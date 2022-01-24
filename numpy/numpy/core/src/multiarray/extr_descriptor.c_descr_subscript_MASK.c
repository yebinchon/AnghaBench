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
typedef  int /*<<< orphan*/  Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC11(PyArray_Descr *self, PyObject *op)
{
    if (FUNC5(self) < 0) {
        return NULL;
    }

    if (FUNC1(op)) {
        return FUNC8(self, op);
    }
    else if (FUNC6(op)) {
        return (PyObject *)FUNC9(self, op);
    }
    else {
        Py_ssize_t i = FUNC0(op);
        if (FUNC10(i)) {
            /* if converting to an int gives a type error, adjust the message */
            PyObject *err = FUNC3();
            if (FUNC2(err, PyExc_TypeError)) {
                FUNC4(PyExc_TypeError,
                        "Field key must be an integer field offset, "
                        "single field name, or list of field names.");
            }
            return NULL;
        }
        return FUNC7(self, i);
    }
}