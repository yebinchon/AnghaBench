
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_12__ {int elsize; } ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_1__ PyArray_Descr ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int *) ;
 int NPY_FAIL ;
 int NPY_NEEDS_INIT ;
 scalar_t__ NPY_SUCCEED ;
 int PyArray_GetDTypeCopySwapFn (int,int ,int ,TYPE_1__*,int **,int **) ;
 scalar_t__ PyArray_GetDTypeTransferFunction (int,int ,int ,TYPE_1__*,TYPE_1__*,int,int **,int **,int*) ;
 int PyDataType_FLAGCHK (TYPE_1__*,int ) ;
 int PyDataType_ISNOTSWAPPED (TYPE_1__*) ;
 int PyDataType_REFCHK (TYPE_1__*) ;
 int assert (int) ;
 scalar_t__ get_nbo_cast_transfer_function (int,int ,int ,TYPE_1__*,TYPE_1__*,int,int **,int **,int*,int*) ;
 scalar_t__ wrap_aligned_contig_transfer_function (int ,int ,int *,int *,int *,int *,int *,int *,int ,int **,int **) ;

__attribute__((used)) static int
get_cast_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyArray_StridedUnaryOp *caststransfer;
    NpyAuxData *castdata, *todata = ((void*)0), *fromdata = ((void*)0);
    int needs_wrap = 0;
    npy_intp src_itemsize = src_dtype->elsize,
            dst_itemsize = dst_dtype->elsize;

    if (get_nbo_cast_transfer_function(aligned,
                            src_stride, dst_stride,
                            src_dtype, dst_dtype,
                            move_references,
                            &caststransfer,
                            &castdata,
                            out_needs_api,
                            &needs_wrap) != NPY_SUCCEED) {
        return NPY_FAIL;
    }





    if (!needs_wrap) {
        *out_stransfer = caststransfer;
        *out_transferdata = castdata;

        return NPY_SUCCEED;
    }

    else {
        PyArray_StridedUnaryOp *tobuffer, *frombuffer;


        PyArray_GetDTypeCopySwapFn(aligned,
                                src_stride, src_itemsize,
                                src_dtype,
                                &tobuffer, &todata);

        if (!PyDataType_REFCHK(dst_dtype)) {

            PyArray_GetDTypeCopySwapFn(aligned,
                                    dst_itemsize, dst_stride,
                                    dst_dtype,
                                    &frombuffer, &fromdata);
        }
        else {





            assert(PyDataType_ISNOTSWAPPED(dst_dtype));

            assert(*out_needs_api);

            if (PyArray_GetDTypeTransferFunction(
                    aligned, dst_itemsize, dst_stride,
                    dst_dtype, dst_dtype, 1,
                    &frombuffer, &fromdata, out_needs_api) != NPY_SUCCEED) {
                return NPY_FAIL;
            }
        }

        if (frombuffer == ((void*)0) || tobuffer == ((void*)0)) {
            NPY_AUXDATA_FREE(castdata);
            NPY_AUXDATA_FREE(todata);
            NPY_AUXDATA_FREE(fromdata);
            return NPY_FAIL;
        }

        *out_stransfer = caststransfer;


        if (wrap_aligned_contig_transfer_function(
                            src_itemsize, dst_itemsize,
                            tobuffer, todata,
                            frombuffer, fromdata,
                            caststransfer, castdata,
                            PyDataType_FLAGCHK(dst_dtype, NPY_NEEDS_INIT),
                            out_stransfer, out_transferdata) != NPY_SUCCEED) {
            NPY_AUXDATA_FREE(castdata);
            NPY_AUXDATA_FREE(todata);
            NPY_AUXDATA_FREE(fromdata);
            return NPY_FAIL;
        }

        return NPY_SUCCEED;
    }
}
