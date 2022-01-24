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
struct TYPE_3__ {int /*<<< orphan*/ * nested_child; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  NpyIter ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC2(NewNpyArrayIterObject *self)
{
    NpyIter *iter = self->iter;
    int ret;
    if (self->iter == NULL) {
        Py_RETURN_NONE;
    }
    ret = FUNC0(iter);
    self->iter = NULL;
    FUNC1(self->nested_child);
    self->nested_child = NULL;
    if (ret < 0) {
        return NULL;
    }
    Py_RETURN_NONE;
}