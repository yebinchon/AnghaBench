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
struct TYPE_3__ {scalar_t__ arr; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_1__ PyArrayFlagsObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ARRAY_WARN_ON_WRITE ; 
 int NPY_ARRAY_WRITEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(PyArrayFlagsObject *self, PyObject *obj)
{
    /*
     * This code should go away in a future release, so do not mangle the
     * array_setflags function with an extra kwarg
     */
    int ret;
    if (obj == NULL) {
        FUNC2(PyExc_AttributeError,
                "Cannot delete flags _warn_on_write attribute");
        return -1;
    }
    ret = FUNC3(obj);
    if (ret > 0) {
        if (!(FUNC1((PyArrayObject*)self->arr) & NPY_ARRAY_WRITEABLE)) {
            FUNC2(PyExc_ValueError,
                        "cannot set '_warn_on_write' flag when 'writable' is "
                        "False");
            return -1;
        }
        FUNC0((PyArrayObject*)self->arr, NPY_ARRAY_WARN_ON_WRITE);
    }
    else if (ret < 0) {
        return -1;
    }
    else {
        FUNC2(PyExc_ValueError,
                        "cannot clear '_warn_on_write', set "
                        "writeable True to clear this private flag");
        return -1;
    }
    return 0;
}