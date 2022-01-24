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
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ NPY_MAX_LONG ; 
 scalar_t__ NPY_MIN_LONG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (long) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 

__attribute__((used)) static PyObject *
FUNC3(PyArrayObject *self)
{
    npy_intp size=FUNC0(self);
#if NPY_SIZEOF_INTP <= NPY_SIZEOF_LONG
    return FUNC1((long) size);
#else
    if (size > NPY_MAX_LONG || size < NPY_MIN_LONG) {
        return PyLong_FromLongLong(size);
    }
    else {
        return PyInt_FromLong((long) size);
    }
#endif
}