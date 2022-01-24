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
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC7(PyArrayObject *self)
{
#if defined(NPY_PY3K)
    return PyMemoryView_FromObject((PyObject *)self);
#else
    npy_intp nbytes;
    if (!(FUNC0(self))) {
        FUNC5(PyExc_AttributeError, "cannot get single-"\
                        "segment buffer for discontiguous array");
        return NULL;
    }
    nbytes = FUNC2(self);
    if (FUNC1(self)) {
        return FUNC4((PyObject *)self, 0, (Py_ssize_t) nbytes);
    }
    else {
        return FUNC3((PyObject *)self, 0, (Py_ssize_t) nbytes);
    }
#endif
}