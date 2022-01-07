
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyArray_IntTupleFromIntp (int ,int ) ;
 int PyArray_NDIM (int *) ;
 int PyArray_STRIDES (int *) ;

__attribute__((used)) static PyObject *
array_strides_get(PyArrayObject *self)
{
    return PyArray_IntTupleFromIntp(PyArray_NDIM(self), PyArray_STRIDES(self));
}
