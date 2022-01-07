
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_7__ {int * clone; int * free; } ;
struct TYPE_8__ {int src_meta; int * tmp_buffer; int dst_itemsize; TYPE_1__ base; } ;
typedef TYPE_2__ _strided_datetime_cast_data ;
struct TYPE_9__ {int elsize; } ;
typedef int PyObject ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_3__ PyArray_Descr ;
typedef int PyArray_DatetimeMetaData ;
typedef int NpyAuxData ;


 int NPY_FAIL ;
 int NPY_SUCCEED ;
 scalar_t__ PyArray_malloc (int) ;
 int PyErr_NoMemory () ;
 int _safe_print (int *) ;
 int _strided_datetime_cast_data_clone ;
 int _strided_datetime_cast_data_free ;
 int _strided_to_strided_datetime_to_string ;
 int * get_datetime_metadata_from_dtype (TYPE_3__*) ;
 int memcpy (int *,int *,int) ;
 int printf (char*) ;

__attribute__((used)) static int
get_nbo_datetime_to_string_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata)
{
    PyArray_DatetimeMetaData *src_meta;
    _strided_datetime_cast_data *data;

    src_meta = get_datetime_metadata_from_dtype(src_dtype);
    if (src_meta == ((void*)0)) {
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
    data->dst_itemsize = dst_dtype->elsize;
    data->tmp_buffer = ((void*)0);

    memcpy(&data->src_meta, src_meta, sizeof(data->src_meta));

    *out_stransfer = &_strided_to_strided_datetime_to_string;
    *out_transferdata = (NpyAuxData *)data;
    return NPY_SUCCEED;
}
