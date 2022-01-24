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
struct TYPE_4__ {int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC2(NewNpyArrayIterObject *self)
{
    if (self->iter == NULL) {
        FUNC0(PyExc_RuntimeError, "operation on non-initialized iterator");
        return NULL;
    }
    FUNC1(self);
    return (PyObject *)self;
}