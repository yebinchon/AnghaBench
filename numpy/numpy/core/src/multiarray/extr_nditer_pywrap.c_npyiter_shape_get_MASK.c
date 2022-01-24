#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t npy_intp ;
struct TYPE_3__ {int /*<<< orphan*/ * iter; scalar_t__ finished; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int NPY_MAXDIMS ; 
 scalar_t__ NPY_SUCCEED ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *FUNC6(NewNpyArrayIterObject *self)
{
    PyObject *ret;
    npy_intp idim, ndim, shape[NPY_MAXDIMS];

    if (self->iter == NULL || self->finished) {
        FUNC2(PyExc_ValueError,
                "Iterator is past the end");
        return NULL;
    }

    if (FUNC1(self->iter, shape) == NPY_SUCCEED) {
        ndim = FUNC0(self->iter);
        ret = FUNC4(ndim);
        if (ret != NULL) {
            for (idim = 0; idim < ndim; ++idim) {
                FUNC5(ret, idim,
                        FUNC3(shape[idim]));
            }
            return ret;
        }
    }

    return NULL;
}