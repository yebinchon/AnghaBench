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
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  NPY_ORDER ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ANYORDER ; 
 int /*<<< orphan*/  NPY_CORDER ; 
 int /*<<< orphan*/  NPY_FORTRANORDER ; 
 int /*<<< orphan*/  NPY_KEEPORDER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(PyObject *order_in, NPY_ORDER *order)
{
    char *str = NULL;
    Py_ssize_t length = 0;

    if (FUNC3(order_in)) {
        /* accept unicode input */
        PyObject *str_obj;
        int ret;
        str_obj = FUNC2(order_in);
        if (str_obj == NULL) {
            return 0;
        }
        ret = FUNC5(str_obj, order);
        FUNC4(str_obj);
        return ret;
    }

    if (FUNC0(order_in, &str, &length) < 0) {
        return 0;
    }

    if (length == 1) switch (str[0]) {
        case 'C':
            *order = NPY_CORDER;
            return 1;
        case 'F':
            *order = NPY_FORTRANORDER;
            return 1;
        case 'A':
            *order = NPY_ANYORDER;
            return 1;
        case 'K':
            *order = NPY_KEEPORDER;
            return 1;
    }

    FUNC1(PyExc_ValueError,
                    "order must be one of 'C', 'F', 'A', or 'K'");
    return 0;
}