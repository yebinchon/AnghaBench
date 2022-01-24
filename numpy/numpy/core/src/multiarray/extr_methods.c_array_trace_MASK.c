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
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PyArray_DescrConverter2 ; 
 int /*<<< orphan*/  PyArray_OutputConverter ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC5(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis1 = 0, axis2 = 1, offset = 0;
    PyArray_Descr *dtype = NULL;
    PyArrayObject *out = NULL;
    int rtype;
    static char *kwlist[] = {"offset", "axis1", "axis2", "dtype", "out", NULL};

    if (!FUNC0(args, kwds, "|iiiO&O&:trace", kwlist,
                                     &offset,
                                     &axis1,
                                     &axis2,
                                     PyArray_DescrConverter2, &dtype,
                                     PyArray_OutputConverter, &out)) {
        FUNC3(dtype);
        return NULL;
    }

    rtype = FUNC4(dtype);
    FUNC3(dtype);
    return FUNC1((PyArrayObject *)FUNC2(self, offset, axis1, axis2, rtype, out));
}