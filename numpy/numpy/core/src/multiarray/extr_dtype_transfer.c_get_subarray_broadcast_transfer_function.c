
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_15__ {int offset; int count; } ;
typedef TYPE_2__ _subarray_broadcast_offsetrun ;
struct TYPE_14__ {int * clone; int * free; } ;
struct TYPE_16__ {int src_N; int dst_N; int src_itemsize; int dst_itemsize; int run_count; int * stransfer_decdstref; int * stransfer_decsrcref; TYPE_2__ offsetruns; int * data_decdstref; int * data_decsrcref; int * data; TYPE_1__ base; int * stransfer; } ;
typedef TYPE_3__ _subarray_broadcast_data ;
struct TYPE_18__ {int elsize; } ;
struct TYPE_17__ {scalar_t__ len; int* ptr; } ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_4__ PyArray_Dims ;
typedef TYPE_5__ PyArray_Descr ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int *) ;
 int NPY_FAIL ;
 scalar_t__ NPY_SUCCEED ;
 scalar_t__ PyArray_GetDTypeTransferFunction (int,int,int,TYPE_5__*,TYPE_5__*,int,int **,int **,int*) ;
 int PyArray_free (TYPE_3__*) ;
 scalar_t__ PyArray_malloc (int) ;
 scalar_t__ PyDataType_REFCHK (TYPE_5__*) ;
 int PyErr_NoMemory () ;
 int _strided_to_strided_subarray_broadcast ;
 int _strided_to_strided_subarray_broadcast_withrefs ;
 int _subarray_broadcast_data_clone ;
 int _subarray_broadcast_data_free ;

__attribute__((used)) static int
get_subarray_broadcast_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            npy_intp src_size, npy_intp dst_size,
                            PyArray_Dims src_shape, PyArray_Dims dst_shape,
                            int move_references,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    _subarray_broadcast_data *data;
    npy_intp structsize, loop_index, run, run_size,
             src_index, dst_index, i, ndim;
    _subarray_broadcast_offsetrun *offsetruns;

    structsize = sizeof(_subarray_broadcast_data) +
                        dst_size*sizeof(_subarray_broadcast_offsetrun);


    data = (_subarray_broadcast_data *)PyArray_malloc(structsize);
    if (data == ((void*)0)) {
        PyErr_NoMemory();
        return NPY_FAIL;
    }






    if (PyArray_GetDTypeTransferFunction(aligned,
                    src_dtype->elsize, dst_dtype->elsize,
                    src_dtype, dst_dtype,
                    0,
                    &data->stransfer, &data->data,
                    out_needs_api) != NPY_SUCCEED) {
        PyArray_free(data);
        return NPY_FAIL;
    }
    data->base.free = &_subarray_broadcast_data_free;
    data->base.clone = &_subarray_broadcast_data_clone;
    data->src_N = src_size;
    data->dst_N = dst_size;
    data->src_itemsize = src_dtype->elsize;
    data->dst_itemsize = dst_dtype->elsize;


    if (move_references && PyDataType_REFCHK(src_dtype)) {
        if (PyArray_GetDTypeTransferFunction(aligned,
                        src_dtype->elsize, 0,
                        src_dtype, ((void*)0),
                        1,
                        &data->stransfer_decsrcref,
                        &data->data_decsrcref,
                        out_needs_api) != NPY_SUCCEED) {
            NPY_AUXDATA_FREE(data->data);
            PyArray_free(data);
            return NPY_FAIL;
        }
    }
    else {
        data->stransfer_decsrcref = ((void*)0);
        data->data_decsrcref = ((void*)0);
    }


    if (PyDataType_REFCHK(dst_dtype)) {
        if (PyArray_GetDTypeTransferFunction(aligned,
                        dst_dtype->elsize, 0,
                        dst_dtype, ((void*)0),
                        1,
                        &data->stransfer_decdstref,
                        &data->data_decdstref,
                        out_needs_api) != NPY_SUCCEED) {
            NPY_AUXDATA_FREE(data->data);
            NPY_AUXDATA_FREE(data->data_decsrcref);
            PyArray_free(data);
            return NPY_FAIL;
        }
    }
    else {
        data->stransfer_decdstref = ((void*)0);
        data->data_decdstref = ((void*)0);
    }


    offsetruns = &data->offsetruns;
    ndim = (src_shape.len > dst_shape.len) ? src_shape.len : dst_shape.len;
    for (loop_index = 0; loop_index < dst_size; ++loop_index) {
        npy_intp src_factor = 1;

        dst_index = loop_index;
        src_index = 0;
        for (i = ndim-1; i >= 0; --i) {
            npy_intp coord = 0, shape;


            if (i >= ndim - dst_shape.len) {
                shape = dst_shape.ptr[i-(ndim-dst_shape.len)];
                coord = dst_index % shape;
                dst_index /= shape;
            }


            if (i >= ndim - src_shape.len) {
                shape = src_shape.ptr[i-(ndim-src_shape.len)];
                if (shape == 1) {
                    coord = 0;
                }
                else {
                    if (coord < shape) {
                        src_index += src_factor*coord;
                        src_factor *= shape;
                    }
                    else {

                        src_index = -1;
                        break;
                    }
                }
            }
        }

        if (src_index == -1) {
            offsetruns[loop_index].offset = -1;
        }
        else {
            offsetruns[loop_index].offset = src_index;
        }
    }


    run = 0;
    run_size = 1;
    for (loop_index = 1; loop_index < dst_size; ++loop_index) {
        if (offsetruns[run].offset == -1) {

            if (offsetruns[loop_index].offset != -1) {
                offsetruns[run].count = run_size;
                run++;
                run_size = 1;
                offsetruns[run].offset = offsetruns[loop_index].offset;
            }
            else {
                run_size++;
            }
        }
        else {

            if (offsetruns[loop_index].offset !=
                            offsetruns[loop_index-1].offset + 1) {
                offsetruns[run].count = run_size;
                run++;
                run_size = 1;
                offsetruns[run].offset = offsetruns[loop_index].offset;
            }
            else {
                run_size++;
            }
        }
    }
    offsetruns[run].count = run_size;
    run++;
    data->run_count = run;


    while (run--) {
        if (offsetruns[run].offset != -1) {
            offsetruns[run].offset *= src_dtype->elsize;
        }
    }

    if (data->stransfer_decsrcref == ((void*)0) &&
                                data->stransfer_decdstref == ((void*)0)) {
        *out_stransfer = &_strided_to_strided_subarray_broadcast;
    }
    else {
        *out_stransfer = &_strided_to_strided_subarray_broadcast_withrefs;
    }
    *out_transferdata = (NpyAuxData *)data;

    return NPY_SUCCEED;
}
