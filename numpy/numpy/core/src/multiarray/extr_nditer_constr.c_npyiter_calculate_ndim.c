
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyArrayObject ;


 int PyArray_NDIM (int *) ;

__attribute__((used)) static int
npyiter_calculate_ndim(int nop, PyArrayObject **op_in,
                       int oa_ndim)
{

    if (oa_ndim >= 0 ) {
        return oa_ndim;
    }

    else {
        int ndim = 0, iop;

        for (iop = 0; iop < nop; ++iop) {
            if (op_in[iop] != ((void*)0)) {
                int ondim = PyArray_NDIM(op_in[iop]);
                if (ondim > ndim) {
                    ndim = ondim;
                }
            }

        }

        return ndim;
    }
}
