
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_15__ {int elsize; } ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_1__ PyArray_Descr ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int *) ;
 int NPY_FAIL ;
 int NPY_NEEDS_INIT ;
 int NPY_STRING ;
 scalar_t__ NPY_SUCCEED ;
 TYPE_1__* PyArray_AdaptFlexibleDType (int *,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* PyArray_DescrFromType (int ) ;
 scalar_t__ PyArray_GetDTypeCopySwapFn (int,int ,int ,TYPE_1__*,int **,int **) ;
 scalar_t__ PyArray_GetDTypeTransferFunction (int,int ,int ,TYPE_1__*,TYPE_1__*,int ,int **,int **,int*) ;
 int PyDataType_FLAGCHK (TYPE_1__*,int ) ;
 int Py_DECREF (TYPE_1__*) ;
 scalar_t__ get_nbo_string_to_datetime_transfer_function (int,int ,int ,TYPE_1__*,TYPE_1__*,int **,int **) ;
 scalar_t__ wrap_aligned_contig_transfer_function (int ,int ,int *,int *,int *,int *,int *,int *,int ,int **,int **) ;

__attribute__((used)) static int
get_unicode_to_datetime_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    NpyAuxData *castdata = ((void*)0), *todata = ((void*)0), *fromdata = ((void*)0);
    PyArray_StridedUnaryOp *caststransfer, *tobuffer, *frombuffer;
    PyArray_Descr *str_dtype;


    str_dtype = PyArray_DescrFromType(NPY_STRING);
    str_dtype = PyArray_AdaptFlexibleDType(((void*)0), src_dtype, str_dtype);
    if (str_dtype == ((void*)0)) {
        return NPY_FAIL;
    }


    if (PyArray_GetDTypeTransferFunction(aligned,
                            src_stride, str_dtype->elsize,
                            src_dtype, str_dtype,
                            0,
                            &tobuffer, &todata,
                            out_needs_api) != NPY_SUCCEED) {
        Py_DECREF(str_dtype);
        return NPY_FAIL;
    }


    if (get_nbo_string_to_datetime_transfer_function(1,
                            str_dtype->elsize, dst_dtype->elsize,
                            str_dtype, dst_dtype,
                            &caststransfer, &castdata) != NPY_SUCCEED) {
        Py_DECREF(str_dtype);
        NPY_AUXDATA_FREE(todata);
        return NPY_FAIL;
    }


    if (PyArray_GetDTypeCopySwapFn(aligned,
                            dst_dtype->elsize, dst_stride,
                            dst_dtype,
                            &frombuffer, &fromdata) != NPY_SUCCEED) {
        Py_DECREF(str_dtype);
        NPY_AUXDATA_FREE(todata);
        NPY_AUXDATA_FREE(castdata);
        return NPY_FAIL;
    }


    if (wrap_aligned_contig_transfer_function(
                        str_dtype->elsize, dst_dtype->elsize,
                        tobuffer, todata,
                        frombuffer, fromdata,
                        caststransfer, castdata,
                        PyDataType_FLAGCHK(dst_dtype, NPY_NEEDS_INIT),
                        out_stransfer, out_transferdata) != NPY_SUCCEED) {
        Py_DECREF(str_dtype);
        NPY_AUXDATA_FREE(castdata);
        NPY_AUXDATA_FREE(todata);
        NPY_AUXDATA_FREE(fromdata);
        return NPY_FAIL;
    }

    Py_DECREF(str_dtype);

    return NPY_SUCCEED;
}
