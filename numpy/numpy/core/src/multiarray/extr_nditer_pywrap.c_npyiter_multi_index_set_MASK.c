#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ npy_intp ;
struct TYPE_4__ {scalar_t__ finished; scalar_t__ started; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int NPY_MAXDIMS ; 
 scalar_t__ NPY_SUCCEED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(NewNpyArrayIterObject *self, PyObject *value)
{
    npy_intp idim, ndim, multi_index[NPY_MAXDIMS];

    if (value == NULL) {
        FUNC3(PyExc_AttributeError,
                "Cannot delete nditer multi_index");
        return -1;
    }
    if (self->iter == NULL) {
        FUNC3(PyExc_ValueError,
                "Iterator is invalid");
        return -1;
    }

    if (FUNC2(self->iter)) {
        ndim = FUNC0(self->iter);
        if (!FUNC5(value)) {
            FUNC3(PyExc_ValueError,
                    "multi_index must be set with a sequence");
            return -1;
        }
        if (FUNC7(value) != ndim) {
            FUNC3(PyExc_ValueError,
                    "Wrong number of indices");
            return -1;
        }
        for (idim = 0; idim < ndim; ++idim) {
            PyObject *v = FUNC6(value, idim);
            multi_index[idim] = FUNC4(v);
            if (FUNC9(multi_index[idim])) {
                FUNC8(v);
                return -1;
            }
        }
        if (FUNC1(self->iter, multi_index) != NPY_SUCCEED) {
            return -1;
        }
        self->started = 0;
        self->finished = 0;

        /* If there is nesting, the nested iterators should be reset */
        if (FUNC10(self) != NPY_SUCCEED) {
            return -1;
        }

        return 0;
    }
    else {
        FUNC3(PyExc_ValueError,
                "Iterator is not tracking a multi-index");
        return -1;
    }
}