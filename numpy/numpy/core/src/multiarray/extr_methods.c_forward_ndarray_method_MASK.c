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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC7(PyArrayObject *self, PyObject *args, PyObject *kwds,
                            PyObject *forwarding_callable)
{
    PyObject *sargs, *ret;
    int i, n;

    /* Combine 'self' and 'args' together into one tuple */
    n = FUNC2(args);
    sargs = FUNC3(n + 1);
    if (sargs == NULL) {
        return NULL;
    }
    FUNC6(self);
    FUNC4(sargs, 0, (PyObject *)self);
    for (i = 0; i < n; ++i) {
        PyObject *item = FUNC1(args, i);
        FUNC6(item);
        FUNC4(sargs, i+1, item);
    }

    /* Call the function and return */
    ret = FUNC0(forwarding_callable, sargs, kwds);
    FUNC5(sargs);
    return ret;
}