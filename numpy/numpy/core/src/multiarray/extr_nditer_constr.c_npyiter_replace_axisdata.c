
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int npy_intp ;
typedef int npy_int8 ;
typedef int PyArrayObject ;
typedef int NpyIter_AxisData ;
typedef int NpyIter ;


 char** NAD_PTRS (int *) ;
 int* NAD_STRIDES (int *) ;
 int NIT_ADVANCE_AXISDATA (int *,int) ;
 int * NIT_AXISDATA (int *) ;
 int NIT_AXISDATA_SIZEOF (int ,int,int) ;
 int* NIT_BASEOFFSETS (int *) ;
 int NIT_ITFLAGS (int *) ;
 int NIT_NDIM (int *) ;
 int NIT_NOP (int *) ;
 int* NIT_PERM (int *) ;
 char** NIT_RESETDATAPTR (int *) ;
 int PyArray_DIM (int *,int) ;
 int PyArray_STRIDE (int *,int) ;

__attribute__((used)) static void
npyiter_replace_axisdata(NpyIter *iter, int iop,
                      PyArrayObject *op,
                      int op_ndim, char *op_dataptr,
                      int *op_axes)
{
    npy_uint32 itflags = NIT_ITFLAGS(iter);
    int idim, ndim = NIT_NDIM(iter);
    int nop = NIT_NOP(iter);

    NpyIter_AxisData *axisdata0, *axisdata;
    npy_intp sizeof_axisdata;
    npy_int8 *perm;
    npy_intp baseoffset = 0;

    perm = NIT_PERM(iter);
    axisdata0 = NIT_AXISDATA(iter);
    sizeof_axisdata = NIT_AXISDATA_SIZEOF(itflags, ndim, nop);





    axisdata = axisdata0;

    if (op_axes != ((void*)0)) {
        for (idim = 0; idim < ndim; ++idim, NIT_ADVANCE_AXISDATA(axisdata, 1)) {
            npy_int8 p;
            int i;
            npy_intp shape;


            p = perm[idim];
            if (p < 0) {
                i = op_axes[ndim+p];
            }
            else {
                i = op_axes[ndim-p-1];
            }

            if (0 <= i && i < op_ndim) {
                shape = PyArray_DIM(op, i);
                if (shape != 1) {
                    npy_intp stride = PyArray_STRIDE(op, i);
                    if (p < 0) {

                        NAD_STRIDES(axisdata)[iop] = -stride;
                        baseoffset += stride*(shape-1);
                    }
                    else {
                        NAD_STRIDES(axisdata)[iop] = stride;
                    }
                }
            }
        }
    }
    else {
        for (idim = 0; idim < ndim; ++idim, NIT_ADVANCE_AXISDATA(axisdata, 1)) {
            npy_int8 p;
            int i;
            npy_intp shape;


            p = perm[idim];
            if (p < 0) {
                i = op_ndim+p;
            }
            else {
                i = op_ndim-p-1;
            }

            if (i >= 0) {
                shape = PyArray_DIM(op, i);
                if (shape != 1) {
                    npy_intp stride = PyArray_STRIDE(op, i);
                    if (p < 0) {

                        NAD_STRIDES(axisdata)[iop] = -stride;
                        baseoffset += stride*(shape-1);
                    }
                    else {
                        NAD_STRIDES(axisdata)[iop] = stride;
                    }
                }
            }
        }
    }

    op_dataptr += baseoffset;


    NIT_RESETDATAPTR(iter)[iop] = op_dataptr;
    NIT_BASEOFFSETS(iter)[iop] = baseoffset;
    axisdata = axisdata0;

    NAD_PTRS(axisdata)[iop] = op_dataptr;
    NIT_ADVANCE_AXISDATA(axisdata, 1);
    for (idim = 1; idim < ndim; ++idim, NIT_ADVANCE_AXISDATA(axisdata, 1)) {
        NAD_PTRS(axisdata)[iop] = op_dataptr;
    }
}
