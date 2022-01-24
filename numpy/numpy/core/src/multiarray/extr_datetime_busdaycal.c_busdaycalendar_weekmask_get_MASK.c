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
typedef  int npy_intp ;
struct TYPE_3__ {int /*<<< orphan*/  weekmask; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_1__ NpyBusDayCalendar ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static PyObject *
FUNC3(NpyBusDayCalendar *self)
{
    PyArrayObject *ret;
    npy_intp size = 7;

    /* Allocate a 7-element boolean array */
    ret = (PyArrayObject *)FUNC1(1, &size, NPY_BOOL);
    if (ret == NULL) {
        return NULL;
    }

    /* Copy the weekmask data */
    FUNC2(FUNC0(ret), self->weekmask, 7);

    return (PyObject *)ret;
}