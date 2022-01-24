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
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 double FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_EQ ; 
 int /*<<< orphan*/  Py_NE ; 
 int FUNC14 (double) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (double) ; 

__attribute__((used)) static npy_intp
FUNC17(PyObject *start, PyObject *stop, PyObject *step, PyObject **next, int cmplx)
{
    npy_intp len, tmp;
    PyObject *zero, *val;
    int next_is_nonzero, val_is_zero;
    double value;

    *next = FUNC9(stop, start);
    if (!(*next)) {
        if (FUNC12(stop)) {
            FUNC4();
            FUNC5(PyExc_TypeError,
                            "arange: scalar arguments expected "\
                            "instead of a tuple.");
        }
        return -1;
    }

    zero = FUNC7(0);
    if (!zero) {
        FUNC13(*next);
        *next = NULL;
        return -1;
    }

    next_is_nonzero = FUNC11(*next, zero, Py_NE);
    if (next_is_nonzero == -1) {
        FUNC13(zero);
        FUNC13(*next);
        *next = NULL;
        return -1;
    }
    val = FUNC10(*next, step);
    FUNC13(*next);
    *next = NULL;

    if (!val) {
        FUNC13(zero);
        return -1;
    }

    val_is_zero = FUNC11(val, zero, Py_EQ);
    FUNC13(zero);
    if (val_is_zero == -1) {
        FUNC13(val);
        return -1;
    }

    if (cmplx && FUNC1(val)) {
        value = FUNC3(val);
        if (FUNC15(value)) {
            FUNC13(val);
            return -1;
        }
        len = FUNC14(value);
        if (FUNC15(len)) {
            FUNC13(val);
            return -1;
        }
        value = FUNC2(val);
        FUNC13(val);
        if (FUNC15(value)) {
            return -1;
        }
        tmp = FUNC14(value);
        if (FUNC15(tmp)) {
            return -1;
        }
        len = FUNC0(len, tmp);
    }
    else {
        value = FUNC6(val);
        FUNC13(val);
        if (FUNC15(value)) {
            return -1;
        }

        /* Underflow and divide-by-inf check */
        if (val_is_zero && next_is_nonzero) {
            if (FUNC16(value)) {
                len = 0;
            }
            else {
                len = 1;
            }
        }
        else {
            len = FUNC14(value);
            if (FUNC15(len)) {
                return -1;
            }
        }
    }

    if (len > 0) {
        *next = FUNC8(start, step);
        if (!*next) {
            return -1;
        }
    }
    return len;
}