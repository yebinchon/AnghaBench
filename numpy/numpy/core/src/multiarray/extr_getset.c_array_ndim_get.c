
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_NDIM (int *) ;
 int * PyInt_FromLong (int ) ;

__attribute__((used)) static PyObject *
array_ndim_get(PyArrayObject *self)
{
    return PyInt_FromLong(PyArray_NDIM(self));
}
