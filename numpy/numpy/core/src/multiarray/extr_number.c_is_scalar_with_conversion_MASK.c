#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* tp_as_number; } ;
struct TYPE_3__ {int /*<<< orphan*/ * (* nb_float ) (int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NPY_SCALARKIND ;

/* Variables and functions */
 int /*<<< orphan*/  Floating ; 
 int /*<<< orphan*/  Integer ; 
 int /*<<< orphan*/  NPY_FLOAT_SCALAR ; 
 int /*<<< orphan*/  NPY_INTPOS_SCALAR ; 
 int /*<<< orphan*/  NPY_NOSCALAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 double FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static NPY_SCALARKIND
FUNC19(PyObject *o2, double* out_exponent)
{
    PyObject *temp;
    const int optimize_fpexps = 1;

    if (FUNC12(o2)) {
        *out_exponent = (double)FUNC10(o2);
        return NPY_INTPOS_SCALAR;
    }
    if (optimize_fpexps && FUNC8(o2)) {
        *out_exponent = FUNC7(o2);
        return NPY_FLOAT_SCALAR;
    }
    if (FUNC0(o2)) {
        if ((FUNC4((PyArrayObject *)o2) == 0) &&
                ((FUNC2((PyArrayObject *)o2) ||
                 (optimize_fpexps && FUNC1((PyArrayObject *)o2))))) {
            temp = FUNC15(o2)->tp_as_number->nb_float(o2);
            if (temp == NULL) {
                return NPY_NOSCALAR;
            }
            *out_exponent = FUNC7(o2);
            FUNC14(temp);
            if (FUNC2((PyArrayObject *)o2)) {
                return NPY_INTPOS_SCALAR;
            }
            else { /* ISFLOAT */
                return NPY_FLOAT_SCALAR;
            }
        }
    }
    else if (FUNC3(o2, Integer) ||
                (optimize_fpexps && FUNC3(o2, Floating))) {
        temp = FUNC15(o2)->tp_as_number->nb_float(o2);
        if (temp == NULL) {
            return NPY_NOSCALAR;
        }
        *out_exponent = FUNC7(o2);
        FUNC14(temp);

        if (FUNC3(o2, Integer)) {
                return NPY_INTPOS_SCALAR;
        }
        else { /* IsScalar(o2, Floating) */
            return NPY_FLOAT_SCALAR;
        }
    }
    else if (FUNC9(o2)) {
        PyObject* value = FUNC13(o2);
        Py_ssize_t val;
        if (value==NULL) {
            if (FUNC6()) {
                FUNC5();
            }
            return NPY_NOSCALAR;
        }
        val = FUNC11(value);
        if (FUNC16(val)) {
            FUNC5();
            return NPY_NOSCALAR;
        }
        *out_exponent = (double) val;
        return NPY_INTPOS_SCALAR;
    }
    return NPY_NOSCALAR;
}