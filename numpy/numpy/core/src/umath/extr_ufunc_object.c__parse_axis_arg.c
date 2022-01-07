
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nargs; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_NDIM (int *) ;
 int PyArray_PyIntAsInt (int *) ;
 scalar_t__ check_and_adjust_axis (int*,int) ;
 scalar_t__ error_converting (int) ;

__attribute__((used)) static int
_parse_axis_arg(PyUFuncObject *ufunc, const int core_num_dims[], PyObject *axis,
                PyArrayObject **op, int broadcast_ndim, int **remap_axis) {
    int nop = ufunc->nargs;
    int iop, axis_int;

    axis_int = PyArray_PyIntAsInt(axis);
    if (error_converting(axis_int)) {
        return -1;
    }

    for (iop = 0; iop < nop; ++iop) {
        int axis, op_ndim, op_axis;


        if (core_num_dims[iop] == 0) {
            remap_axis[iop] = ((void*)0);
            continue;
        }
        if (op[iop]) {
            op_ndim = PyArray_NDIM(op[iop]);
        }
        else {
            op_ndim = broadcast_ndim + 1;
        }
        op_axis = axis_int;
        if (check_and_adjust_axis(&op_axis, op_ndim) < 0) {
            return -1;
        }

        if (op_axis == op_ndim - 1) {
            remap_axis[iop] = ((void*)0);
            continue;
        }
        remap_axis[iop][op_ndim - 1] = op_axis;
        for (axis = 0; axis < op_axis; axis++) {
            remap_axis[iop][axis] = axis;
        }
        for (axis = op_axis; axis < op_ndim - 1; axis++) {
            remap_axis[iop][axis] = axis + 1;
        }
    }
    return 0;
}
