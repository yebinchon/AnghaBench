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
typedef  int /*<<< orphan*/  npy_bool ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_BoolConverter ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC2(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    npy_bool inplace = NPY_FALSE;
    static char *kwlist[] = {"inplace", NULL};

    if (!FUNC0(args, kwds, "|O&:byteswap", kwlist,
                                     PyArray_BoolConverter, &inplace)) {
        return NULL;
    }
    return FUNC1(self, inplace);
}