#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_5__ {int /*<<< orphan*/ * iter; scalar_t__ finished; } ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int,int) ; 

__attribute__((used)) static PyObject *
FUNC13(NewNpyArrayIterObject *self, PyObject *op)
{
    if (self->iter == NULL || self->finished) {
        FUNC4(PyExc_ValueError,
                "Iterator is past the end");
        return NULL;
    }

    if (FUNC1(self->iter)) {
        FUNC4(PyExc_ValueError,
                "Iterator construction used delayed buffer allocation, "
                "and no reset has been done yet");
        return NULL;
    }

    if (FUNC6(op) || FUNC7(op) ||
                    (FUNC5(op) && !FUNC8(op))) {
        npy_intp i = FUNC3(op);
        if (FUNC10(i)) {
            return NULL;
        }
        return FUNC11(self, i);
    }
    else if (FUNC9(op)) {
        Py_ssize_t istart = 0, iend = 0, istep = 0, islicelength;
        if (FUNC2(op, FUNC0(self->iter),
                                  &istart, &iend, &istep, &islicelength) < 0) {
            return NULL;
        }
        if (istep != 1) {
            FUNC4(PyExc_ValueError,
                    "Iterator slicing only supports a step of 1");
            return NULL;
        }
        return FUNC12(self, istart, iend);
    }

    FUNC4(PyExc_TypeError,
            "invalid index type for iterator indexing");
    return NULL;
}