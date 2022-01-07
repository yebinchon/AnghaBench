
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_6__ {int elsize; } ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_1__ PyArray_Descr ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int *) ;
 int NPY_FAIL ;
 scalar_t__ NPY_SUCCEED ;
 scalar_t__ PyArray_GetDTypeTransferFunction (int,int ,int ,TYPE_1__*,TYPE_1__*,int,int **,int **,int*) ;
 scalar_t__ wrap_transfer_function_n_to_n (int *,int *,int ,int ,int ,int ,int ,int **,int **) ;

__attribute__((used)) static int
get_n_to_n_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            npy_intp N,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyArray_StridedUnaryOp *stransfer;
    NpyAuxData *data;





    if (PyArray_GetDTypeTransferFunction(aligned,
                    src_dtype->elsize, dst_dtype->elsize,
                    src_dtype, dst_dtype,
                    move_references,
                    &stransfer, &data,
                    out_needs_api) != NPY_SUCCEED) {
        return NPY_FAIL;
    }

    if (wrap_transfer_function_n_to_n(stransfer, data,
                            src_stride, dst_stride,
                            src_dtype->elsize, dst_dtype->elsize,
                            N,
                            out_stransfer,
                            out_transferdata) != NPY_SUCCEED) {
        NPY_AUXDATA_FREE(data);
        return NPY_FAIL;
    }

    return NPY_SUCCEED;
}
