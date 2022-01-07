
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;


 int NPY_MAXDIMS ;
 int PyErr_Format (int ,char*,...) ;
 int PyExc_ValueError ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int
npyiter_check_op_axes(int nop, int oa_ndim, int **op_axes,
                        const npy_intp *itershape)
{
    char axes_dupcheck[NPY_MAXDIMS];
    int iop, idim;

    if (oa_ndim < 0) {





        if (op_axes != ((void*)0) || itershape != ((void*)0)) {
            PyErr_Format(PyExc_ValueError,
                    "If 'op_axes' or 'itershape' is not NULL in the iterator "
                    "constructor, 'oa_ndim' must be zero or greater");
            return 0;
        }
        return 1;
    }
    if (oa_ndim > NPY_MAXDIMS) {
        PyErr_Format(PyExc_ValueError,
                "Cannot construct an iterator with more than %d dimensions "
                "(%d were requested for op_axes)",
                NPY_MAXDIMS, oa_ndim);
        return 0;
    }
    if (op_axes == ((void*)0)) {
        PyErr_Format(PyExc_ValueError,
                "If 'oa_ndim' is zero or greater in the iterator "
                "constructor, then op_axes cannot be NULL");
        return 0;
    }


    for (iop = 0; iop < nop; ++iop) {
        int *axes = op_axes[iop];
        if (axes != ((void*)0)) {
            memset(axes_dupcheck, 0, NPY_MAXDIMS);
            for (idim = 0; idim < oa_ndim; ++idim) {
                int i = axes[idim];
                if (i >= 0) {
                    if (i >= NPY_MAXDIMS) {
                        PyErr_Format(PyExc_ValueError,
                                "The 'op_axes' provided to the iterator "
                                "constructor for operand %d "
                                "contained invalid "
                                "values %d", iop, i);
                        return 0;
                    }
                    else if (axes_dupcheck[i] == 1) {
                        PyErr_Format(PyExc_ValueError,
                                "The 'op_axes' provided to the iterator "
                                "constructor for operand %d "
                                "contained duplicate "
                                "value %d", iop, i);
                        return 0;
                    }
                    else {
                        axes_dupcheck[i] = 1;
                    }
                }
            }
        }
    }

    return 1;
}
