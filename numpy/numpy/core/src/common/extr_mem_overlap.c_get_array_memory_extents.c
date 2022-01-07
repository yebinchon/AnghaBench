
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_uintp ;
typedef scalar_t__ npy_intp ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_DATA (int *) ;
 scalar_t__ PyArray_DIM (int *,int) ;
 int PyArray_DIMS (int *) ;
 scalar_t__ PyArray_ITEMSIZE (int *) ;
 int PyArray_NDIM (int *) ;
 int PyArray_STRIDES (int *) ;
 int offset_bounds_from_strides (scalar_t__,int,int ,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void
get_array_memory_extents(PyArrayObject *arr,
                         npy_uintp *out_start, npy_uintp *out_end,
                         npy_uintp *num_bytes)
{
    npy_intp low, upper;
    int j;
    offset_bounds_from_strides(PyArray_ITEMSIZE(arr), PyArray_NDIM(arr),
                               PyArray_DIMS(arr), PyArray_STRIDES(arr),
                               &low, &upper);
    *out_start = (npy_uintp)PyArray_DATA(arr) + (npy_uintp)low;
    *out_end = (npy_uintp)PyArray_DATA(arr) + (npy_uintp)upper;

    *num_bytes = PyArray_ITEMSIZE(arr);
    for (j = 0; j < PyArray_NDIM(arr); ++j) {
        *num_bytes *= PyArray_DIM(arr, j);
    }
}
