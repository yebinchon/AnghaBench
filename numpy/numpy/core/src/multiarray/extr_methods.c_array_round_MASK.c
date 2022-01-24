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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PyArray_OutputConverter ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC3(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int decimals = 0;
    PyArrayObject *out = NULL;
    static char *kwlist[] = {"decimals", "out", NULL};

    if (!FUNC0(args, kwds, "|iO&:round", kwlist,
                                     &decimals,
                                     PyArray_OutputConverter, &out)) {
        return NULL;
    }
    return FUNC1((PyArrayObject *)FUNC2(self, decimals, out));
}