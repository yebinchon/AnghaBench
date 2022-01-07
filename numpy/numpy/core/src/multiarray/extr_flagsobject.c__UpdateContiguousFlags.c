
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int npy_bool ;
typedef int PyArrayObject ;


 int NPY_ARRAY_C_CONTIGUOUS ;
 int NPY_ARRAY_F_CONTIGUOUS ;
 int PyArray_CLEARFLAGS (int *,int ) ;
 int* PyArray_DIMS (int *) ;
 int PyArray_ENABLEFLAGS (int *,int ) ;
 int PyArray_ITEMSIZE (int *) ;
 int PyArray_NDIM (int *) ;
 int* PyArray_STRIDES (int *) ;

__attribute__((used)) static void
_UpdateContiguousFlags(PyArrayObject *ap)
{
    npy_intp sd;
    npy_intp dim;
    int i;
    npy_bool is_c_contig = 1;

    sd = PyArray_ITEMSIZE(ap);
    for (i = PyArray_NDIM(ap) - 1; i >= 0; --i) {
        dim = PyArray_DIMS(ap)[i];
        if (PyArray_STRIDES(ap)[i] != sd) {
            is_c_contig = 0;
            break;
        }

        if (dim == 0) {
            break;
        }
        sd *= dim;

    }
    if (is_c_contig) {
        PyArray_ENABLEFLAGS(ap, NPY_ARRAY_C_CONTIGUOUS);
    }
    else {
        PyArray_CLEARFLAGS(ap, NPY_ARRAY_C_CONTIGUOUS);
    }


    sd = PyArray_ITEMSIZE(ap);
    for (i = 0; i < PyArray_NDIM(ap); ++i) {
        dim = PyArray_DIMS(ap)[i];
        if (PyArray_STRIDES(ap)[i] != sd) {
            PyArray_CLEARFLAGS(ap, NPY_ARRAY_F_CONTIGUOUS);
            return;
        }
        if (dim == 0) {
            break;
        }
        sd *= dim;

    }
    PyArray_ENABLEFLAGS(ap, NPY_ARRAY_F_CONTIGUOUS);
    return;
}
