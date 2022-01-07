
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_8__ {int elsize; } ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_1__ PyArray_Descr ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int *) ;
 int NPY_FAIL ;
 scalar_t__ NPY_SUCCEED ;
 scalar_t__ PyArray_GetDTypeTransferFunction (int,int ,int ,TYPE_1__*,TYPE_1__*,int ,int **,int **,int*) ;
 scalar_t__ PyDataType_REFCHK (TYPE_1__*) ;
 scalar_t__ get_decsrcref_transfer_function (int,int ,TYPE_1__*,int **,int **,int*) ;
 scalar_t__ wrap_transfer_function_one_to_n (int *,int *,int *,int *,int ,int ,int **,int **) ;

__attribute__((used)) static int
get_one_to_n_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            npy_intp N,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyArray_StridedUnaryOp *stransfer, *stransfer_finish_src = ((void*)0);
    NpyAuxData *data, *data_finish_src = ((void*)0);







    if (PyArray_GetDTypeTransferFunction(aligned,
                    0, dst_dtype->elsize,
                    src_dtype, dst_dtype,
                    0,
                    &stransfer, &data,
                    out_needs_api) != NPY_SUCCEED) {
        return NPY_FAIL;
    }


    if (move_references && PyDataType_REFCHK(src_dtype)) {
        if (get_decsrcref_transfer_function(aligned,
                            src_stride,
                            src_dtype,
                            &stransfer_finish_src,
                            &data_finish_src,
                            out_needs_api) != NPY_SUCCEED) {
            NPY_AUXDATA_FREE(data);
            return NPY_FAIL;
        }
    }

    if (wrap_transfer_function_one_to_n(stransfer, data,
                            stransfer_finish_src, data_finish_src,
                            dst_dtype->elsize,
                            N,
                            out_stransfer, out_transferdata) != NPY_SUCCEED) {
        NPY_AUXDATA_FREE(data);
        NPY_AUXDATA_FREE(data_finish_src);
        return NPY_FAIL;
    }

    return NPY_SUCCEED;
}
