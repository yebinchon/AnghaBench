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
typedef  int /*<<< orphan*/  npy_uint32 ;
typedef  size_t npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(PyObject *op_flags_in,
                         npy_uint32 *op_flags_array, npy_intp nop)
{
    npy_intp iop;

    if (!FUNC6(op_flags_in) && !FUNC3(op_flags_in)) {
        FUNC2(PyExc_ValueError,
                "op_flags must be a tuple or array of per-op flag-tuples");
        return 0;
    }

    if (FUNC5(op_flags_in) != nop) {
        goto try_single_flags;
    }

    for (iop = 0; iop < nop; ++iop) {
        PyObject *f = FUNC4(op_flags_in, iop);
        if (f == NULL) {
            return 0;
        }
        /* If the first item is a string, try as one set of flags */
        if (iop == 0 && (FUNC1(f) || FUNC7(f))) {
            FUNC8(f);
            goto try_single_flags;
        }
        if (FUNC0(f,
                        &op_flags_array[iop]) != 1) {
            FUNC8(f);
            return 0;
        }

        FUNC8(f);
    }

    return 1;

try_single_flags:
    if (FUNC0(op_flags_in,
                        &op_flags_array[0]) != 1) {
        return 0;
    }

    for (iop = 1; iop < nop; ++iop) {
        op_flags_array[iop] = op_flags_array[0];
    }

    return 1;
}