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
typedef  int /*<<< orphan*/  NPY_ORDER ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_CORDER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_OrderConverter ; 

__attribute__((used)) static PyObject *
FUNC2(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    NPY_ORDER order = NPY_CORDER;
    static char *kwlist[] = {"order", NULL};

    if (!FUNC0(args, kwds, "|O&:copy", kwlist,
                                     PyArray_OrderConverter, &order)) {
        return NULL;
    }

    return FUNC1(self, order);
}