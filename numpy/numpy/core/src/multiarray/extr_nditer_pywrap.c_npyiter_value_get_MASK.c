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
typedef  int npy_intp ;
struct TYPE_4__ {int /*<<< orphan*/ * iter; scalar_t__ finished; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static PyObject *FUNC6(NewNpyArrayIterObject *self)
{
    PyObject *ret;

    npy_intp iop, nop;

    if (self->iter == NULL || self->finished) {
        FUNC1(PyExc_ValueError,
                "Iterator is past the end");
        return NULL;
    }

    nop = FUNC0(self->iter);

    /* Return an array  or tuple of arrays with the values */
    if (nop == 1) {
        ret = FUNC5(self, 0);
    }
    else {
        ret = FUNC2(nop);
        if (ret == NULL) {
            return NULL;
        }
        for (iop = 0; iop < nop; ++iop) {
            PyObject *a = FUNC5(self, iop);
            if (a == NULL) {
                FUNC4(ret);
                return NULL;
            }
            FUNC3(ret, iop, a);
        }
    }

    return ret;
}