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

/* Variables and functions */
 double NPY_MAX_INTP ; 
 double NPY_MIN_INTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_OverflowError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 double FUNC1 (double) ; 
 scalar_t__ FUNC2 (double) ; 

__attribute__((used)) static npy_intp
FUNC3(double value)
{
    double ivalue;

    ivalue = FUNC1(value);
    /* condition inverted to handle NaN */
    if (FUNC2(ivalue)) {
        FUNC0(PyExc_ValueError,
            "arange: cannot compute length");
        return -1;
    }
    if (!(NPY_MIN_INTP <= ivalue && ivalue <= NPY_MAX_INTP)) {
        FUNC0(PyExc_OverflowError,
                "arange: overflow while computing length");
        return -1;
    }

    return (npy_intp)ivalue;
}