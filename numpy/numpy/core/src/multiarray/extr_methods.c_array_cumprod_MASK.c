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
 int NPY_MAXDIMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PyArray_AxisConverter ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_DescrConverter2 ; 
 int /*<<< orphan*/  PyArray_OutputConverter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis = NPY_MAXDIMS;
    PyArray_Descr *dtype = NULL;
    PyArrayObject *out = NULL;
    int rtype;
    static char *kwlist[] = {"axis", "dtype", "out", NULL};

    if (!FUNC0(args, kwds, "|O&O&O&:cumprod", kwlist,
                                     PyArray_AxisConverter, &axis,
                                     PyArray_DescrConverter2, &dtype,
                                     PyArray_OutputConverter, &out)) {
        FUNC2(dtype);
        return NULL;
    }

    rtype = FUNC3(dtype);
    FUNC2(dtype);
    return FUNC1(self, axis, rtype, out);
}