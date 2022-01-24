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
struct TYPE_3__ {int flags; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayFlagsObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int NPY_ARRAY_UPDATEIFCOPY ; 
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_True ; 

__attribute__((used)) static PyObject *
FUNC2(PyArrayFlagsObject *self)
{
    PyObject *item;
    /* 2017-Nov-10 1.14 */
    if(FUNC0("UPDATEIFCOPY deprecated, use WRITEBACKIFCOPY instead") < 0) {
        return NULL;
    }
    if ((self->flags & (NPY_ARRAY_UPDATEIFCOPY)) == (NPY_ARRAY_UPDATEIFCOPY)) {
        item = Py_True;
    }
    else {
        item = Py_False;
    }
    FUNC1(item);
    return item;
}