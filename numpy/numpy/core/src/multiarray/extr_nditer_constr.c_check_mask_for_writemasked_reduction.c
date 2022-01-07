
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef scalar_t__ npy_intp ;
typedef int NpyIter_AxisData ;
typedef int NpyIter ;


 scalar_t__* NAD_STRIDES (int *) ;
 int NIT_ADVANCE_AXISDATA (int *,int) ;
 int * NIT_AXISDATA (int *) ;
 scalar_t__ NIT_AXISDATA_SIZEOF (int ,int,int) ;
 int NIT_ITFLAGS (int *) ;
 int NIT_MASKOP (int *) ;
 int NIT_NDIM (int *) ;
 int NIT_NOP (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;

__attribute__((used)) static int
check_mask_for_writemasked_reduction(NpyIter *iter, int iop)
{
    npy_uint32 itflags = NIT_ITFLAGS(iter);
    int idim, ndim = NIT_NDIM(iter);
    int nop = NIT_NOP(iter);
    int maskop = NIT_MASKOP(iter);

    NpyIter_AxisData *axisdata;
    npy_intp sizeof_axisdata;

    axisdata = NIT_AXISDATA(iter);
    sizeof_axisdata = NIT_AXISDATA_SIZEOF(itflags, ndim, nop);

    for(idim = 0; idim < ndim; ++idim) {
        npy_intp maskstride, istride;

        istride = NAD_STRIDES(axisdata)[iop];
        maskstride = NAD_STRIDES(axisdata)[maskop];





        if (maskstride != 0 && istride == 0) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator reduction operand is WRITEMASKED, "
                    "but also broadcasts to multiple mask values. "
                    "There can be only one mask value per WRITEMASKED "
                    "element.");
            return 0;
        }

        NIT_ADVANCE_AXISDATA(axisdata, 1);
    }

    return 1;
}
