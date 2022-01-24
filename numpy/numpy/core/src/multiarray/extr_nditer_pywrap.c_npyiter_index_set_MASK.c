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
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_4__ {scalar_t__ finished; scalar_t__ started; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 scalar_t__ NPY_SUCCEED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(NewNpyArrayIterObject *self, PyObject *value)
{
    if (value == NULL) {
        FUNC2(PyExc_AttributeError,
                "Cannot delete nditer index");
        return -1;
    }
    if (self->iter == NULL) {
        FUNC2(PyExc_ValueError,
                "Iterator is invalid");
        return -1;
    }

    if (FUNC1(self->iter)) {
        npy_intp ind;
        ind = FUNC3(value);
        if (FUNC4(ind)) {
            return -1;
        }
        if (FUNC0(self->iter, ind) != NPY_SUCCEED) {
            return -1;
        }
        self->started = 0;
        self->finished = 0;

        /* If there is nesting, the nested iterators should be reset */
        if (FUNC5(self) != NPY_SUCCEED) {
            return -1;
        }

        return 0;
    }
    else {
        FUNC2(PyExc_ValueError,
                "Iterator does not have an index");
        return -1;
    }
}