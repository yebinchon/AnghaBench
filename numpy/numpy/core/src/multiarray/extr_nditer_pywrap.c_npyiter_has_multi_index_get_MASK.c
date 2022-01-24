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
struct TYPE_3__ {int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  Py_RETURN_FALSE ; 
 int /*<<< orphan*/  Py_RETURN_TRUE ; 

__attribute__((used)) static PyObject *FUNC2(NewNpyArrayIterObject *self)
{
    if (self->iter == NULL) {
        FUNC1(PyExc_ValueError,
                "Iterator is invalid");
        return NULL;
    }

    if (FUNC0(self->iter)) {
        Py_RETURN_TRUE;
    }
    else {
        Py_RETURN_FALSE;
    }
}