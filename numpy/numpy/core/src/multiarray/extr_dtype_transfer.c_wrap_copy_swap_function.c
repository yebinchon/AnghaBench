
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_9__ {int * clone; int * free; } ;
struct TYPE_11__ {int swap; int * arr; int copyswapn; TYPE_1__ base; } ;
typedef TYPE_3__ _wrap_copy_swap_data ;
struct TYPE_12__ {TYPE_2__* f; } ;
struct TYPE_10__ {int copyswapn; } ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_4__ PyArray_Descr ;
typedef int PyArrayObject ;
typedef int NpyAuxData ;


 int NPY_FAIL ;
 int NPY_SUCCEED ;
 scalar_t__ PyArray_NewFromDescr_int (int *,TYPE_4__*,int,int*,int *,int *,int ,int *,int *,int ,int) ;
 int PyArray_Type ;
 int PyArray_free (TYPE_3__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int PyErr_NoMemory () ;
 int Py_INCREF (TYPE_4__*) ;
 int _strided_to_strided_wrap_copy_swap ;
 int _wrap_copy_swap_data_clone ;
 int _wrap_copy_swap_data_free ;

__attribute__((used)) static int
wrap_copy_swap_function(int aligned,
                npy_intp src_stride, npy_intp dst_stride,
                PyArray_Descr *dtype,
                int should_swap,
                PyArray_StridedUnaryOp **out_stransfer,
                NpyAuxData **out_transferdata)
{
    _wrap_copy_swap_data *data;
    npy_intp shape = 1;


    data = (_wrap_copy_swap_data *)PyArray_malloc(sizeof(_wrap_copy_swap_data));
    if (data == ((void*)0)) {
        PyErr_NoMemory();
        *out_stransfer = ((void*)0);
        *out_transferdata = ((void*)0);
        return NPY_FAIL;
    }

    data->base.free = &_wrap_copy_swap_data_free;
    data->base.clone = &_wrap_copy_swap_data_clone;
    data->copyswapn = dtype->f->copyswapn;
    data->swap = should_swap;





    Py_INCREF(dtype);
    data->arr = (PyArrayObject *)PyArray_NewFromDescr_int(
            &PyArray_Type, dtype,
            1, &shape, ((void*)0), ((void*)0),
            0, ((void*)0), ((void*)0),
            0, 1);
    if (data->arr == ((void*)0)) {
        PyArray_free(data);
        return NPY_FAIL;
    }

    *out_stransfer = &_strided_to_strided_wrap_copy_swap;
    *out_transferdata = (NpyAuxData *)data;

    return NPY_SUCCEED;
}
