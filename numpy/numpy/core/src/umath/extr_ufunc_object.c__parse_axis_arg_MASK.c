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
struct TYPE_3__ {int nargs; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(PyUFuncObject *ufunc, const int core_num_dims[], PyObject *axis,
                PyArrayObject **op, int broadcast_ndim, int **remap_axis) {
    int nop = ufunc->nargs;
    int iop, axis_int;

    axis_int = FUNC1(axis);
    if (FUNC3(axis_int)) {
        return -1;
    }

    for (iop = 0; iop < nop; ++iop) {
        int axis, op_ndim, op_axis;

        /* _check_axis_support ensures core_num_dims is 0 or 1 */
        if (core_num_dims[iop] == 0) {
            remap_axis[iop] = NULL;
            continue;
        }
        if (op[iop]) {
            op_ndim = FUNC0(op[iop]);
        }
        else {
            op_ndim = broadcast_ndim + 1;
        }
        op_axis = axis_int;  /* ensure we don't modify axis_int */
        if (FUNC2(&op_axis, op_ndim) < 0) {
            return -1;
        }
        /* Are we actually remapping away from last axis? */
        if (op_axis == op_ndim - 1) {
            remap_axis[iop] = NULL;
            continue;
        }
        remap_axis[iop][op_ndim - 1] = op_axis;
        for (axis = 0; axis < op_axis; axis++) {
            remap_axis[iop][axis] = axis;
        }
        for (axis = op_axis; axis < op_ndim - 1; axis++) {
            remap_axis[iop][axis] = axis + 1;
        }
    } /* end of for(iop) loop over operands */
    return 0;
}