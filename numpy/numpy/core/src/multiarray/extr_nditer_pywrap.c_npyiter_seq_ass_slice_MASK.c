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
struct TYPE_4__ {int /*<<< orphan*/ * iter; scalar_t__ finished; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(NewNpyArrayIterObject *self, Py_ssize_t ilow,
                Py_ssize_t ihigh, PyObject *v)
{
    npy_intp nop;
    Py_ssize_t i;

    if (v == NULL) {
        FUNC2(PyExc_TypeError,
                "Cannot delete iterator elements");
        return -1;
    }

    if (self->iter == NULL || self->finished) {
        FUNC2(PyExc_ValueError,
                "Iterator is past the end");
        return -1;
    }

    if (FUNC1(self->iter)) {
        FUNC2(PyExc_ValueError,
                "Iterator construction used delayed buffer allocation, "
                "and no reset has been done yet");
        return -1;
    }
    nop = FUNC0(self->iter);
    if (ilow < 0) {
        ilow = 0;
    }
    else if (ilow >= nop) {
        ilow = nop-1;
    }
    if (ihigh < ilow) {
        ihigh = ilow;
    }
    else if (ihigh > nop) {
        ihigh = nop;
    }

    if (!FUNC3(v) || FUNC5(v) != ihigh-ilow) {
        FUNC2(PyExc_ValueError,
                "Wrong size to assign to iterator slice");
        return -1;
    }

    for (i = ilow; i < ihigh ; ++i) {
        PyObject *item = FUNC4(v, i-ilow);
        if (item == NULL) {
            return -1;
        }
        if (FUNC7(self, i, item) < 0) {
            FUNC6(item);
            return -1;
        }
        FUNC6(item);
    }

    return 0;
}