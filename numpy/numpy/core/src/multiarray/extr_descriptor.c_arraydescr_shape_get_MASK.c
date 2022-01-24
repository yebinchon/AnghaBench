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
struct TYPE_5__ {int /*<<< orphan*/ * shape; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC5(PyArray_Descr *self)
{
    if (!FUNC0(self)) {
        return FUNC2(0);
    }
    FUNC4(FUNC1(self->subarray->shape));
    FUNC3(self->subarray->shape);
    return self->subarray->shape;
}