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
 int /*<<< orphan*/  NPY_MAXDIMS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_EQ ; 

__attribute__((used)) static int
FUNC5(PyArrayObject *self, PyObject *el)
{
    /* equivalent to (self == el).any() */

    int ret;
    PyObject *res, *any;

    res = FUNC1(FUNC3((PyObject *)self,
                                                      el, Py_EQ));
    if (res == NULL) {
        return -1;
    }
    any = FUNC0((PyArrayObject *)res, NPY_MAXDIMS, NULL);
    FUNC4(res);
    ret = FUNC2(any);
    FUNC4(any);
    return ret;
}