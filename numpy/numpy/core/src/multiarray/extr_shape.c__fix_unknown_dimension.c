
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_4__ {int* ptr; int len; } ;
typedef TYPE_1__ PyArray_Dims ;
typedef int PyArrayObject ;


 int PyArray_SIZE (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 scalar_t__ npy_mul_with_overflow_intp (int*,int,int) ;
 int raise_reshape_size_mismatch (TYPE_1__*,int *) ;

__attribute__((used)) static int
_fix_unknown_dimension(PyArray_Dims *newshape, PyArrayObject *arr)
{
    npy_intp *dimensions;
    npy_intp s_original = PyArray_SIZE(arr);
    npy_intp i_unknown, s_known;
    int i, n;

    dimensions = newshape->ptr;
    n = newshape->len;
    s_known = 1;
    i_unknown = -1;

    for (i = 0; i < n; i++) {
        if (dimensions[i] < 0) {
            if (i_unknown == -1) {
                i_unknown = i;
            }
            else {
                PyErr_SetString(PyExc_ValueError,
                                "can only specify one unknown dimension");
                return -1;
            }
        }
        else if (npy_mul_with_overflow_intp(&s_known, s_known,
                                            dimensions[i])) {
            raise_reshape_size_mismatch(newshape, arr);
            return -1;
        }
    }

    if (i_unknown >= 0) {
        if (s_known == 0 || s_original % s_known != 0) {
            raise_reshape_size_mismatch(newshape, arr);
            return -1;
        }
        dimensions[i_unknown] = s_original / s_known;
    }
    else {
        if (s_original != s_known) {
            raise_reshape_size_mismatch(newshape, arr);
            return -1;
        }
    }
    return 0;
}
