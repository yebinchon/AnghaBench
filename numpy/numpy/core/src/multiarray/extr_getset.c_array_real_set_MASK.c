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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(PyArrayObject *self, PyObject *val)
{
    PyArrayObject *ret;
    PyArrayObject *new;
    int retcode;

    if (val == NULL) {
        FUNC3(PyExc_AttributeError,
                "Cannot delete array real part");
        return -1;
    }
    if (FUNC1(self)) {
        ret = FUNC6(self, 0);
        if (ret == NULL) {
            return -1;
        }
    }
    else {
        FUNC5(self);
        ret = self;
    }
    new = (PyArrayObject *)FUNC0(val);
    if (new == NULL) {
        FUNC4(ret);
        return -1;
    }
    retcode = FUNC2(ret, new);
    FUNC4(ret);
    FUNC4(new);
    return retcode;
}