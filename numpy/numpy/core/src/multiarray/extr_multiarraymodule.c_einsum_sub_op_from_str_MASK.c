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
 int /*<<< orphan*/  NPY_ARRAY_ENSUREARRAY ; 
 int NPY_MAXARGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(PyObject *args, PyObject **str_obj, char **subscripts,
                       PyArrayObject **op)
{
    int i, nop;
    PyObject *subscripts_str;

    nop = FUNC4(args) - 1;
    if (nop <= 0) {
        FUNC2(PyExc_ValueError,
                        "must specify the einstein sum subscripts string "
                        "and at least one operand");
        return -1;
    }
    else if (nop >= NPY_MAXARGS) {
        FUNC2(PyExc_ValueError, "too many operands");
        return -1;
    }

    /* Get the subscripts string */
    subscripts_str = FUNC3(args, 0);
    if (FUNC6(subscripts_str)) {
        *str_obj = FUNC5(subscripts_str);
        if (*str_obj == NULL) {
            return -1;
        }
        subscripts_str = *str_obj;
    }

    *subscripts = FUNC1(subscripts_str);
    if (*subscripts == NULL) {
        FUNC7(*str_obj);
        *str_obj = NULL;
        return -1;
    }

    /* Set the operands to NULL */
    for (i = 0; i < nop; ++i) {
        op[i] = NULL;
    }

    /* Get the operands */
    for (i = 0; i < nop; ++i) {
        PyObject *obj = FUNC3(args, i+1);

        op[i] = (PyArrayObject *)FUNC0(obj, NPY_ARRAY_ENSUREARRAY);
        if (op[i] == NULL) {
            goto fail;
        }
    }

    return nop;

fail:
    for (i = 0; i < nop; ++i) {
        FUNC7(op[i]);
        op[i] = NULL;
    }

    return -1;
}