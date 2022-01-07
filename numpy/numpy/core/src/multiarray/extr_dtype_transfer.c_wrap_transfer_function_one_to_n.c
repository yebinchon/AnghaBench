
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* npy_intp ;
struct TYPE_4__ {int * clone; int * free; } ;
struct TYPE_5__ {void* dst_itemsize; void* N; int * data_finish_src; int * stransfer_finish_src; int * data; int * stransfer; TYPE_1__ base; } ;
typedef TYPE_2__ _one_to_n_data ;
typedef int PyArray_StridedUnaryOp ;
typedef int NpyAuxData ;


 int NPY_FAIL ;
 int NPY_SUCCEED ;
 TYPE_2__* PyArray_malloc (int) ;
 int PyErr_NoMemory () ;
 int _one_to_n_data_clone ;
 int _one_to_n_data_free ;
 int _strided_to_strided_one_to_n ;
 int _strided_to_strided_one_to_n_with_finish ;

__attribute__((used)) static int
wrap_transfer_function_one_to_n(
                            PyArray_StridedUnaryOp *stransfer_inner,
                            NpyAuxData *data_inner,
                            PyArray_StridedUnaryOp *stransfer_finish_src,
                            NpyAuxData *data_finish_src,
                            npy_intp dst_itemsize,
                            npy_intp N,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata)
{
    _one_to_n_data *data;


    data = PyArray_malloc(sizeof(_one_to_n_data));
    if (data == ((void*)0)) {
        PyErr_NoMemory();
        return NPY_FAIL;
    }

    data->base.free = &_one_to_n_data_free;
    data->base.clone = &_one_to_n_data_clone;
    data->stransfer = stransfer_inner;
    data->data = data_inner;
    data->stransfer_finish_src = stransfer_finish_src;
    data->data_finish_src = data_finish_src;
    data->N = N;
    data->dst_itemsize = dst_itemsize;

    if (stransfer_finish_src == ((void*)0)) {
        *out_stransfer = &_strided_to_strided_one_to_n;
    }
    else {
        *out_stransfer = &_strided_to_strided_one_to_n_with_finish;
    }
    *out_transferdata = (NpyAuxData *)data;

    return NPY_SUCCEED;
}
