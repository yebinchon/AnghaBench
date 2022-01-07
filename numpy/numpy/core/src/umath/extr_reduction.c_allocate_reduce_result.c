
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int shape ;
struct TYPE_8__ {size_t perm; } ;
typedef TYPE_1__ npy_stride_sort_item ;
typedef size_t npy_intp ;
typedef scalar_t__ npy_bool ;
struct TYPE_9__ {size_t elsize; } ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 int PyArray_CreateSortedStridePerm (int,int ,TYPE_1__*) ;
 size_t* PyArray_DIMS (int *) ;
 TYPE_2__* PyArray_DTYPE (int *) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescr (int *,TYPE_2__*,int,size_t*,size_t*,int *,int ,int *) ;
 int PyArray_STRIDES (int *) ;
 int PyArray_Type ;
 int Py_INCREF (TYPE_2__*) ;
 int * Py_TYPE (int *) ;
 int memcpy (size_t*,size_t*,int) ;

__attribute__((used)) static PyArrayObject *
allocate_reduce_result(PyArrayObject *arr, const npy_bool *axis_flags,
                        PyArray_Descr *dtype, int subok)
{
    npy_intp strides[NPY_MAXDIMS], stride;
    npy_intp shape[NPY_MAXDIMS], *arr_shape = PyArray_DIMS(arr);
    npy_stride_sort_item strideperm[NPY_MAXDIMS];
    int idim, ndim = PyArray_NDIM(arr);

    if (dtype == ((void*)0)) {
        dtype = PyArray_DTYPE(arr);
        Py_INCREF(dtype);
    }

    PyArray_CreateSortedStridePerm(PyArray_NDIM(arr),
                                    PyArray_STRIDES(arr), strideperm);


    stride = dtype->elsize;
    if (ndim) {
        memcpy(shape, arr_shape, ndim * sizeof(shape[0]));
    }
    for (idim = ndim-1; idim >= 0; --idim) {
        npy_intp i_perm = strideperm[idim].perm;
        if (axis_flags[i_perm]) {
            strides[i_perm] = 0;
            shape[i_perm] = 1;
        }
        else {
            strides[i_perm] = stride;
            stride *= shape[i_perm];
        }
    }


    return (PyArrayObject *)PyArray_NewFromDescr(
                                    subok ? Py_TYPE(arr) : &PyArray_Type,
                                    dtype, ndim, shape, strides,
                                    ((void*)0), 0, subok ? (PyObject *)arr : ((void*)0));
}
