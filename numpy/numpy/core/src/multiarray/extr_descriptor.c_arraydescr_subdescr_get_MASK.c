#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* subarray; } ;
struct TYPE_5__ {int /*<<< orphan*/  shape; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 

__attribute__((used)) static PyObject *
FUNC2(PyArray_Descr *self)
{
    if (!FUNC0(self)) {
        Py_RETURN_NONE;
    }
    return FUNC1("OO",
            (PyObject *)self->subarray->base, self->subarray->shape);
}