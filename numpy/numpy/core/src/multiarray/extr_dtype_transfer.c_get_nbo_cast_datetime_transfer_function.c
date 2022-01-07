
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int npy_intp ;
typedef scalar_t__ npy_int64 ;
struct TYPE_12__ {int * clone; int * free; } ;
struct TYPE_13__ {int dst_meta; int src_meta; int * tmp_buffer; scalar_t__ denom; scalar_t__ num; TYPE_1__ base; } ;
typedef TYPE_2__ _strided_datetime_cast_data ;
struct TYPE_15__ {scalar_t__ base; } ;
struct TYPE_14__ {scalar_t__ type_num; } ;
typedef int PyObject ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_3__ PyArray_Descr ;
typedef TYPE_4__ PyArray_DatetimeMetaData ;
typedef int NpyAuxData ;


 scalar_t__ NPY_DATETIME ;
 int NPY_FAIL ;
 scalar_t__ NPY_FR_M ;
 scalar_t__ NPY_FR_Y ;
 int NPY_SUCCEED ;
 scalar_t__ PyArray_malloc (int) ;
 int PyErr_NoMemory () ;
 int _aligned_strided_to_strided_datetime_cast ;
 int _safe_print (int *) ;
 int _strided_datetime_cast_data_clone ;
 int _strided_datetime_cast_data_free ;
 int _strided_to_strided_datetime_cast ;
 int _strided_to_strided_datetime_general_cast ;
 int get_datetime_conversion_factor (TYPE_4__*,TYPE_4__*,scalar_t__*,scalar_t__*) ;
 TYPE_4__* get_datetime_metadata_from_dtype (TYPE_3__*) ;
 int memcpy (int *,TYPE_4__*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
get_nbo_cast_datetime_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata)
{
    PyArray_DatetimeMetaData *src_meta, *dst_meta;
    npy_int64 num = 0, denom = 0;
    _strided_datetime_cast_data *data;

    src_meta = get_datetime_metadata_from_dtype(src_dtype);
    if (src_meta == ((void*)0)) {
        return NPY_FAIL;
    }
    dst_meta = get_datetime_metadata_from_dtype(dst_dtype);
    if (dst_meta == ((void*)0)) {
        return NPY_FAIL;
    }

    get_datetime_conversion_factor(src_meta, dst_meta, &num, &denom);

    if (num == 0) {
        return NPY_FAIL;
    }


    data = (_strided_datetime_cast_data *)PyArray_malloc(
                                    sizeof(_strided_datetime_cast_data));
    if (data == ((void*)0)) {
        PyErr_NoMemory();
        *out_stransfer = ((void*)0);
        *out_transferdata = ((void*)0);
        return NPY_FAIL;
    }
    data->base.free = &_strided_datetime_cast_data_free;
    data->base.clone = &_strided_datetime_cast_data_clone;
    data->num = num;
    data->denom = denom;
    data->tmp_buffer = ((void*)0);






    if (src_dtype->type_num == NPY_DATETIME &&
            (src_meta->base == NPY_FR_Y ||
             src_meta->base == NPY_FR_M ||
             dst_meta->base == NPY_FR_Y ||
             dst_meta->base == NPY_FR_M)) {
        memcpy(&data->src_meta, src_meta, sizeof(data->src_meta));
        memcpy(&data->dst_meta, dst_meta, sizeof(data->dst_meta));
        *out_stransfer = &_strided_to_strided_datetime_general_cast;
    }
    else if (aligned) {
        *out_stransfer = &_aligned_strided_to_strided_datetime_cast;
    }
    else {
        *out_stransfer = &_strided_to_strided_datetime_cast;
    }
    *out_transferdata = (NpyAuxData *)data;
    return NPY_SUCCEED;
}
