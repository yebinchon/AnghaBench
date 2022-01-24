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
typedef  scalar_t__ npy_intp ;
struct TYPE_3__ {int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *FUNC6(NewNpyArrayIterObject *self)
{
    PyObject *ret;

    npy_intp iop, nop;

    if (self->iter == NULL) {
        FUNC2(PyExc_ValueError,
                "Iterator is invalid");
        return NULL;
    }
    nop = FUNC1(self->iter);

    ret = FUNC3(nop);
    if (ret == NULL) {
        return NULL;
    }
    for (iop = 0; iop < nop; ++iop) {
        PyArrayObject *view = FUNC0(self->iter, iop);

        if (view == NULL) {
            FUNC5(ret);
            return NULL;
        }
        FUNC4(ret, iop, (PyObject *)view);
    }

    return ret;
}