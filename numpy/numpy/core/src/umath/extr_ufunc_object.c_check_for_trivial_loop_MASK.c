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
typedef  size_t npy_intp ;
struct TYPE_3__ {size_t nin; size_t nout; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(PyUFuncObject *ufunc,
                        PyArrayObject **op,
                        PyArray_Descr **dtype,
                        npy_intp buffersize)
{
    npy_intp i, nin = ufunc->nin, nop = nin + ufunc->nout;

    for (i = 0; i < nop; ++i) {
        /*
         * If the dtype doesn't match, or the array isn't aligned,
         * indicate that the trivial loop can't be done.
         */
        if (op[i] != NULL &&
                (!FUNC4(op[i]) ||
                !FUNC3(dtype[i], FUNC1(op[i]))
                                        )) {
            /*
             * If op[j] is a scalar or small one dimensional
             * array input, make a copy to keep the opportunity
             * for a trivial loop.
             */
            if (i < nin && (FUNC5(op[i]) == 0 ||
                    (FUNC5(op[i]) == 1 &&
                     FUNC2(op[i],0) <= buffersize))) {
                PyArrayObject *tmp;
                FUNC7(dtype[i]);
                tmp = (PyArrayObject *)
                            FUNC0(op[i], dtype[i], 0);
                if (tmp == NULL) {
                    return -1;
                }
                FUNC6(op[i]);
                op[i] = tmp;
            }
            else {
                return 0;
            }
        }
    }

    return 1;
}