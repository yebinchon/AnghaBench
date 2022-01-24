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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC3(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis1 = 0, axis2 = 1, offset = 0;
    static char *kwlist[] = {"offset", "axis1", "axis2", NULL};
    PyArrayObject *ret;

    if (!FUNC0(args, kwds, "|iii:diagonal", kwlist,
                                     &offset,
                                     &axis1,
                                     &axis2)) {
        return NULL;
    }

    ret = (PyArrayObject *)FUNC1(self, offset, axis1, axis2);
    return FUNC2(ret);
}