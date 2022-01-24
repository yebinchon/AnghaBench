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
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_3__ {int /*<<< orphan*/ * iter; scalar_t__ finished; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *FUNC4(NewNpyArrayIterObject *self)
{
    if (self->iter == NULL || self->finished) {
        FUNC2(PyExc_ValueError,
                "Iterator is past the end");
        return NULL;
    }

    if (FUNC1(self->iter)) {
        npy_intp ind = *FUNC0(self->iter);
        return FUNC3(ind);
    }
    else {
        FUNC2(PyExc_ValueError,
                "Iterator does not have an index");
        return NULL;
    }
}