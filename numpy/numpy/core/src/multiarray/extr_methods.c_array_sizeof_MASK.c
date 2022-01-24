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
typedef  int /*<<< orphan*/  npy_intp ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ARRAY_OWNDATA ; 
 scalar_t__ NPY_SIZEOF_PYARRAYOBJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 

__attribute__((used)) static PyObject *
FUNC4(PyArrayObject *self)
{
    /* object + dimension and strides */
    Py_ssize_t nbytes = NPY_SIZEOF_PYARRAYOBJECT +
        FUNC2(self) * sizeof(npy_intp) * 2;
    if (FUNC0(self, NPY_ARRAY_OWNDATA)) {
        nbytes += FUNC1(self);
    }
    return FUNC3(nbytes);
}