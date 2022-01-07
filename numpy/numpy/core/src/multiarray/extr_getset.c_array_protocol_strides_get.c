
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_ISCONTIGUOUS (int *) ;
 int * PyArray_IntTupleFromIntp (int ,int ) ;
 int PyArray_NDIM (int *) ;
 int PyArray_STRIDES (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
array_protocol_strides_get(PyArrayObject *self)
{
    if (PyArray_ISCONTIGUOUS(self)) {
        Py_RETURN_NONE;
    }
    return PyArray_IntTupleFromIntp(PyArray_NDIM(self), PyArray_STRIDES(self));
}
