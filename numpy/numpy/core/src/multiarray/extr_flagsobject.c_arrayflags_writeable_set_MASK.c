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
struct TYPE_3__ {int /*<<< orphan*/ * arr; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayFlagsObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_False ; 
 int /*<<< orphan*/  Py_None ; 
 int /*<<< orphan*/  Py_True ; 

__attribute__((used)) static int
FUNC4(PyArrayFlagsObject *self, PyObject *obj)
{
    PyObject *res;

    if (obj == NULL) {
        FUNC0(PyExc_AttributeError,
                "Cannot delete flags writeable attribute");
        return -1;
    }
    if (self->arr == NULL) {
        FUNC0(PyExc_ValueError,
                "Cannot set flags on array scalars.");
        return -1;
    }
    res = FUNC1(self->arr, "setflags", "OOO",
                              (FUNC2(obj) ? Py_True : Py_False),
                              Py_None, Py_None);
    if (res == NULL) {
        return -1;
    }
    FUNC3(res);
    return 0;
}