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
struct TYPE_4__ {int started; int finished; int /*<<< orphan*/ * iter; int /*<<< orphan*/ * get_multi_index; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 scalar_t__ NPY_SUCCEED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(NewNpyArrayIterObject *self, PyObject *value)
{
    npy_intp istart = 0, iend = 0;

    if (value == NULL) {
        FUNC4(PyExc_AttributeError,
                "Cannot delete nditer iterrange");
        return -1;
    }
    if (self->iter == NULL) {
        FUNC4(PyExc_ValueError,
                "Iterator is invalid");
        return -1;
    }

    if (!FUNC3(value, "nn", &istart, &iend)) {
        return -1;
    }

    if (FUNC2(self->iter, istart, iend, NULL)
                                                    != NPY_SUCCEED) {
        return -1;
    }
    if (istart < iend) {
        self->started = self->finished = 0;
    }
    else {
        self->started = self->finished = 1;
    }

    if (self->get_multi_index == NULL && FUNC1(self->iter)) {
        self->get_multi_index = FUNC0(self->iter, NULL);
    }

    /* If there is nesting, the nested iterators should be reset */
    if (FUNC5(self) != NPY_SUCCEED) {
        return -1;
    }

    return 0;
}