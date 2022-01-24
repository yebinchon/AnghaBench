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
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 

__attribute__((used)) static Py_ssize_t
FUNC4(PyArrayObject *self, Py_ssize_t segment, void **ptrptr)
{
    if (segment != 0) {
        FUNC3(PyExc_ValueError,
                        "accessing non-existing array segment");
        return -1;
    }
    if (FUNC1(self)) {
        *ptrptr = FUNC0(self);
        return FUNC2(self);
    }
    FUNC3(PyExc_ValueError, "array is not a single segment");
    *ptrptr = NULL;
    return -1;
}