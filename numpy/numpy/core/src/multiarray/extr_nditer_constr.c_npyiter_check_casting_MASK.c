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
typedef  int npyiter_opitflags ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int NPY_OP_ITFLAG_CAST ; 
 int NPY_OP_ITFLAG_READ ; 
 int NPY_OP_ITFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,...) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC15(int nop, PyArrayObject **op,
                    PyArray_Descr **op_dtype,
                    NPY_CASTING casting,
                    npyiter_opitflags *op_itflags)
{
    int iop;

    for(iop = 0; iop < nop; ++iop) {
        FUNC1("Iterator: Checking casting for operand %d\n",
                            (int)iop);
#if NPY_IT_DBG_TRACING
        printf("op: ");
        if (op[iop] != NULL) {
            PyObject_Print((PyObject *)PyArray_DESCR(op[iop]), stdout, 0);
        }
        else {
            printf("<null>");
        }
        printf(", iter: ");
        PyObject_Print((PyObject *)op_dtype[iop], stdout, 0);
        printf("\n");
#endif
        /* If the types aren't equivalent, a cast is necessary */
        if (op[iop] != NULL && !FUNC5(FUNC4(op[iop]),
                                                     op_dtype[iop])) {
            /* Check read (op -> temp) casting */
            if ((op_itflags[iop] & NPY_OP_ITFLAG_READ) &&
                        !FUNC2(op[iop],
                                          op_dtype[iop],
                                          casting)) {
                PyObject *errmsg;
                errmsg = FUNC10(
                        "Iterator operand %d dtype could not be cast from ",
                        iop);
                FUNC9(&errmsg,
                        FUNC8((PyObject *)FUNC4(op[iop])));
                FUNC9(&errmsg,
                        FUNC11(" to "));
                FUNC9(&errmsg,
                        FUNC8((PyObject *)op_dtype[iop]));
                FUNC9(&errmsg,
                        FUNC10(" according to the rule %s",
                                FUNC13(casting)));
                FUNC6(PyExc_TypeError, errmsg);
                FUNC12(errmsg);
                return 0;
            }
            /* Check write (temp -> op) casting */
            if ((op_itflags[iop] & NPY_OP_ITFLAG_WRITE) &&
                        !FUNC3(op_dtype[iop],
                                          FUNC4(op[iop]),
                                          casting)) {
                PyObject *errmsg;
                errmsg = FUNC11(
                        "Iterator requested dtype could not be cast from ");
                FUNC9(&errmsg,
                        FUNC8((PyObject *)op_dtype[iop]));
                FUNC9(&errmsg,
                        FUNC11(" to "));
                FUNC9(&errmsg,
                        FUNC8((PyObject *)FUNC4(op[iop])));
                FUNC9(&errmsg,
                        FUNC10(", the operand %d dtype, "
                                "according to the rule %s",
                                iop,
                                FUNC13(casting)));
                FUNC6(PyExc_TypeError, errmsg);
                FUNC12(errmsg);
                return 0;
            }

            FUNC0("Iterator: Setting NPY_OP_ITFLAG_CAST "
                                "because the types aren't equivalent\n");
            /* Indicate that this operand needs casting */
            op_itflags[iop] |= NPY_OP_ITFLAG_CAST;
        }
    }

    return 1;
}