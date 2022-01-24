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
struct TYPE_3__ {int /*<<< orphan*/ ** operands; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *FUNC5(NewNpyArrayIterObject *self)
{
    PyObject *ret;

    npy_intp iop, nop;
    PyArrayObject **operands;

    if (self->iter == NULL) {
        FUNC1(PyExc_ValueError,
                "Iterator is invalid");
        return NULL;
    }
    nop = FUNC0(self->iter);
    operands = self->operands;

    ret = FUNC2(nop);
    if (ret == NULL) {
        return NULL;
    }
    for (iop = 0; iop < nop; ++iop) {
        PyObject *operand = (PyObject *)operands[iop];

        FUNC4(operand);
        FUNC3(ret, iop, operand);
    }

    return ret;
}