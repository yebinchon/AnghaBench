#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(PyArrayObject *self, PyObject *args)
{
    PyObject *start, *stop, *slice, *result;
    if (!FUNC0(args, "OO:__getslice__", &start, &stop)) {
        return NULL;
    }

    slice = FUNC2(start, stop, NULL);
    if (slice == NULL) {
        return NULL;
    }

    /* Deliberately delegate to subclasses */
    result = FUNC1((PyObject *)self, slice);
    FUNC3(slice);
    return result;
}