
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
struct TYPE_23__ {int * clone; int * free; } ;
struct TYPE_24__ {int * aip; int * aop; int * castfunc; TYPE_1__ base; } ;
typedef TYPE_2__ _strided_cast_data ;
struct TYPE_25__ {scalar_t__ elsize; int type_num; int byteorder; } ;
typedef int PyArray_VectorUnaryFunc ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_3__ PyArray_Descr ;
typedef int PyArrayObject ;
typedef int NpyAuxData ;


 int NPY_DATETIME ;
 int NPY_FAIL ;
 int NPY_NATIVE ;
 int NPY_NEEDS_PYAPI ;


 int NPY_SUCCEED ;
 int NPY_TIMEDELTA ;


 TYPE_3__* PyArray_DescrNewByteorder (TYPE_3__*,int ) ;
 int * PyArray_GetCastFunc (TYPE_3__*,int) ;
 scalar_t__ PyArray_ISNBO (int ) ;
 scalar_t__ PyArray_NewFromDescr_int (int *,TYPE_3__*,int,scalar_t__*,int *,int *,int ,int *,int *,int ,int) ;
 int PyArray_Type ;
 int PyArray_free (TYPE_2__*) ;
 scalar_t__ PyArray_malloc (int) ;
 scalar_t__ PyDataType_FLAGCHK (TYPE_3__*,int ) ;
 int PyErr_NoMemory () ;
 scalar_t__ PyTypeNum_ISNUMBER (int) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (TYPE_3__*) ;
 int * _aligned_contig_to_contig_cast ;
 int * _aligned_strided_to_strided_cast ;
 int * _aligned_strided_to_strided_cast_decref_src ;
 int _strided_cast_data_clone ;
 int _strided_cast_data_free ;
 int get_datetime_to_unicode_transfer_function (int,scalar_t__,scalar_t__,TYPE_3__*,TYPE_3__*,int **,int **,int*) ;
 int get_nbo_cast_datetime_transfer_function (int,scalar_t__,scalar_t__,TYPE_3__*,TYPE_3__*,int **,int **) ;
 int get_nbo_cast_numeric_transfer_function (int,scalar_t__,scalar_t__,int,int,int **,int **) ;
 int get_nbo_datetime_to_string_transfer_function (int,scalar_t__,scalar_t__,TYPE_3__*,TYPE_3__*,int **,int **) ;
 int get_nbo_string_to_datetime_transfer_function (int,scalar_t__,scalar_t__,TYPE_3__*,TYPE_3__*,int **,int **) ;
 int get_unicode_to_datetime_transfer_function (int,scalar_t__,scalar_t__,TYPE_3__*,TYPE_3__*,int **,int **,int*) ;

__attribute__((used)) static int
get_nbo_cast_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api,
                            int *out_needs_wrap)
{
    _strided_cast_data *data;
    PyArray_VectorUnaryFunc *castfunc;
    PyArray_Descr *tmp_dtype;
    npy_intp shape = 1, src_itemsize = src_dtype->elsize,
            dst_itemsize = dst_dtype->elsize;

    if (PyTypeNum_ISNUMBER(src_dtype->type_num) &&
                    PyTypeNum_ISNUMBER(dst_dtype->type_num)) {
        *out_needs_wrap = !PyArray_ISNBO(src_dtype->byteorder) ||
                          !PyArray_ISNBO(dst_dtype->byteorder);
        return get_nbo_cast_numeric_transfer_function(aligned,
                                    src_stride, dst_stride,
                                    src_dtype->type_num, dst_dtype->type_num,
                                    out_stransfer, out_transferdata);
    }

    if (src_dtype->type_num == NPY_DATETIME ||
            src_dtype->type_num == NPY_TIMEDELTA ||
            dst_dtype->type_num == NPY_DATETIME ||
            dst_dtype->type_num == NPY_TIMEDELTA) {

        if ((src_dtype->type_num == NPY_DATETIME &&
                    dst_dtype->type_num == NPY_DATETIME) ||
                (src_dtype->type_num == NPY_TIMEDELTA &&
                    dst_dtype->type_num == NPY_TIMEDELTA)) {
            *out_needs_wrap = !PyArray_ISNBO(src_dtype->byteorder) ||
                              !PyArray_ISNBO(dst_dtype->byteorder);
            return get_nbo_cast_datetime_transfer_function(aligned,
                                        src_stride, dst_stride,
                                        src_dtype, dst_dtype,
                                        out_stransfer, out_transferdata);
        }






        if (src_dtype->type_num == NPY_DATETIME) {
            switch (dst_dtype->type_num) {
                case 130:
                    *out_needs_api = 1;
                    *out_needs_wrap = !PyArray_ISNBO(src_dtype->byteorder);
                    return get_nbo_datetime_to_string_transfer_function(
                                        aligned,
                                        src_stride, dst_stride,
                                        src_dtype, dst_dtype,
                                        out_stransfer, out_transferdata);

                case 129:
                    return get_datetime_to_unicode_transfer_function(
                                        aligned,
                                        src_stride, dst_stride,
                                        src_dtype, dst_dtype,
                                        out_stransfer, out_transferdata,
                                        out_needs_api);
            }
        }
        else if (dst_dtype->type_num == NPY_DATETIME) {
            switch (src_dtype->type_num) {
                case 130:
                    *out_needs_api = 1;
                    *out_needs_wrap = !PyArray_ISNBO(dst_dtype->byteorder);
                    return get_nbo_string_to_datetime_transfer_function(
                                        aligned,
                                        src_stride, dst_stride,
                                        src_dtype, dst_dtype,
                                        out_stransfer, out_transferdata);

                case 129:
                    return get_unicode_to_datetime_transfer_function(
                                        aligned,
                                        src_stride, dst_stride,
                                        src_dtype, dst_dtype,
                                        out_stransfer, out_transferdata,
                                        out_needs_api);
            }
        }
    }

    *out_needs_wrap = !aligned ||
                      !PyArray_ISNBO(src_dtype->byteorder) ||
                      !PyArray_ISNBO(dst_dtype->byteorder);


    switch (src_dtype->type_num) {
        case 131:
        case 130:
        case 129:
        case 128:
            if (out_needs_api) {
                *out_needs_api = 1;
            }
            break;
    }
    switch (dst_dtype->type_num) {
        case 131:
        case 130:
        case 129:
        case 128:
            if (out_needs_api) {
                *out_needs_api = 1;
            }
            break;
    }

    if (PyDataType_FLAGCHK(src_dtype, NPY_NEEDS_PYAPI) ||
            PyDataType_FLAGCHK(dst_dtype, NPY_NEEDS_PYAPI)) {
        if (out_needs_api) {
            *out_needs_api = 1;
        }
    }


    castfunc = PyArray_GetCastFunc(src_dtype, dst_dtype->type_num);
    if (!castfunc) {
        *out_stransfer = ((void*)0);
        *out_transferdata = ((void*)0);
        return NPY_FAIL;
    }


    data = (_strided_cast_data *)PyArray_malloc(sizeof(_strided_cast_data));
    if (data == ((void*)0)) {
        PyErr_NoMemory();
        *out_stransfer = ((void*)0);
        *out_transferdata = ((void*)0);
        return NPY_FAIL;
    }
    data->base.free = &_strided_cast_data_free;
    data->base.clone = &_strided_cast_data_clone;
    data->castfunc = castfunc;






    if (PyArray_ISNBO(src_dtype->byteorder)) {
        tmp_dtype = src_dtype;
        Py_INCREF(tmp_dtype);
    }
    else {
        tmp_dtype = PyArray_DescrNewByteorder(src_dtype, NPY_NATIVE);
        if (tmp_dtype == ((void*)0)) {
            PyArray_free(data);
            return NPY_FAIL;
        }
    }
    data->aip = (PyArrayObject *)PyArray_NewFromDescr_int(
            &PyArray_Type, tmp_dtype,
            1, &shape, ((void*)0), ((void*)0),
            0, ((void*)0), ((void*)0),
            0, 1);
    if (data->aip == ((void*)0)) {
        PyArray_free(data);
        return NPY_FAIL;
    }






    if (PyArray_ISNBO(dst_dtype->byteorder)) {
        tmp_dtype = dst_dtype;
        Py_INCREF(tmp_dtype);
    }
    else {
        tmp_dtype = PyArray_DescrNewByteorder(dst_dtype, NPY_NATIVE);
        if (tmp_dtype == ((void*)0)) {
            Py_DECREF(data->aip);
            PyArray_free(data);
            return NPY_FAIL;
        }
    }
    data->aop = (PyArrayObject *)PyArray_NewFromDescr_int(
            &PyArray_Type, tmp_dtype,
            1, &shape, ((void*)0), ((void*)0),
            0, ((void*)0), ((void*)0),
            0, 1);
    if (data->aop == ((void*)0)) {
        Py_DECREF(data->aip);
        PyArray_free(data);
        return NPY_FAIL;
    }


    if (move_references && src_dtype->type_num == 131) {
        *out_stransfer = _aligned_strided_to_strided_cast_decref_src;
    }
    else {





        if ((src_stride == src_itemsize && dst_stride == dst_itemsize) ||
                        *out_needs_wrap) {
            *out_stransfer = _aligned_contig_to_contig_cast;
        }
        else {
            *out_stransfer = _aligned_strided_to_strided_cast;
        }
    }
    *out_transferdata = (NpyAuxData *)data;

    return NPY_SUCCEED;
}
