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
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC7(PyArrayObject *self, char *dataptr, int startdim)
{
    npy_intp i, n, stride;
    PyObject *ret, *item;

    /* Base case */
    if (startdim >= FUNC2(self)) {
        return FUNC1(self, dataptr);
    }

    n = FUNC0(self, startdim);
    stride = FUNC3(self, startdim);

    ret = FUNC4(n);
    if (ret == NULL) {
        return NULL;
    }

    for (i = 0; i < n; ++i) {
        item = FUNC7(self, dataptr, startdim+1);
        if (item == NULL) {
            FUNC6(ret);
            return NULL;
        }
        FUNC5(ret, i, item);

        dataptr += stride;
    }

    return ret;
}