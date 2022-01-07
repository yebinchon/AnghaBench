
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArray_Dims ;
typedef int PyArrayObject ;


 int PyArray_IntpConverter (int *,int *) ;
 int * PyArray_Transpose (int *,int *) ;
 int * PyTuple_GET_ITEM (int *,int ) ;
 int PyTuple_Size (int *) ;
 int * Py_None ;
 int npy_free_cache_dim_obj (int ) ;

__attribute__((used)) static PyObject *
array_transpose(PyArrayObject *self, PyObject *args)
{
    PyObject *shape = Py_None;
    Py_ssize_t n = PyTuple_Size(args);
    PyArray_Dims permute;
    PyObject *ret;

    if (n > 1) {
        shape = args;
    }
    else if (n == 1) {
        shape = PyTuple_GET_ITEM(args, 0);
    }

    if (shape == Py_None) {
        ret = PyArray_Transpose(self, ((void*)0));
    }
    else {
        if (!PyArray_IntpConverter(shape, &permute)) {
            return ((void*)0);
        }
        ret = PyArray_Transpose(self, &permute);
        npy_free_cache_dim_obj(permute);
    }

    return ret;
}
