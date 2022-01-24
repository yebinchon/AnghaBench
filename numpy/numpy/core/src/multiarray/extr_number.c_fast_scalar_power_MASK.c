#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * square; int /*<<< orphan*/ * sqrt; int /*<<< orphan*/ * _ones_like; int /*<<< orphan*/ * reciprocal; int /*<<< orphan*/ * positive; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  scalar_t__ NPY_SCALARKIND ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_DOUBLE ; 
 scalar_t__ NPY_FLOAT_SCALAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,double*) ; 
 TYPE_1__ n_ops ; 

__attribute__((used)) static int
FUNC13(PyArrayObject *a1, PyObject *o2, int inplace,
                  PyObject **value)
{
    double exponent;
    NPY_SCALARKIND kind;   /* NPY_NOSCALAR is not scalar */

    if (FUNC1(a1) &&
            !FUNC9(a1) &&
            ((kind=FUNC12(o2, &exponent))>0)) {
        PyObject *fastop = NULL;
        if (FUNC6(a1) || FUNC5(a1)) {
            if (exponent == 1.0) {
                fastop = n_ops.positive;
            }
            else if (exponent == -1.0) {
                fastop = n_ops.reciprocal;
            }
            else if (exponent ==  0.0) {
                fastop = n_ops._ones_like;
            }
            else if (exponent ==  0.5) {
                fastop = n_ops.sqrt;
            }
            else if (exponent ==  2.0) {
                fastop = n_ops.square;
            }
            else {
                return -1;
            }

            if (inplace || FUNC11(a1)) {
                *value = FUNC3(a1, fastop);
            }
            else {
                *value = FUNC4(a1, fastop);
            }
            return 0;
        }
        /* Because this is called with all arrays, we need to
         *  change the output if the kind of the scalar is different
         *  than that of the input and inplace is not on ---
         *  (thus, the input should be up-cast)
         */
        else if (exponent == 2.0) {
            fastop = n_ops.square;
            if (inplace) {
                *value = FUNC3(a1, fastop);
            }
            else {
                /* We only special-case the FLOAT_SCALAR and integer types */
                if (kind == NPY_FLOAT_SCALAR && FUNC8(a1)) {
                    PyArray_Descr *dtype = FUNC2(NPY_DOUBLE);
                    a1 = (PyArrayObject *)FUNC0(a1, dtype,
                            FUNC7(a1));
                    if (a1 != NULL) {
                        /* cast always creates a new array */
                        *value = FUNC3(a1, fastop);
                        FUNC10(a1);
                    }
                }
                else {
                    *value = FUNC4(a1, fastop);
                }
            }
            return 0;
        }
    }
    /* no fast operation found */
    return -1;
}