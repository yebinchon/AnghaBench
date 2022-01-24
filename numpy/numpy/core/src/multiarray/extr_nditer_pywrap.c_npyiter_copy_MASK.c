#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  finished; int /*<<< orphan*/  started; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NpyIter_Type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC5(NewNpyArrayIterObject *self)
{
    NewNpyArrayIterObject *iter;

    if (self->iter == NULL) {
        FUNC1(PyExc_ValueError,
                "Iterator is invalid");
        return NULL;
    }

    /* Allocate the iterator */
    iter = (NewNpyArrayIterObject *)FUNC4(&NpyIter_Type, NULL, NULL);
    if (iter == NULL) {
        return NULL;
    }

    /* Copy the C iterator */
    iter->iter = FUNC0(self->iter);
    if (iter->iter == NULL) {
        FUNC2(iter);
        return NULL;
    }

    /* Cache some values for the member functions to use */
    if (FUNC3(iter) < 0) {
        FUNC2(iter);
        return NULL;
    }

    iter->started = self->started;
    iter->finished = self->finished;

    return (PyObject *)iter;
}