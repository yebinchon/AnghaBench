
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ NPY_MAX_LONG ;
 scalar_t__ NPY_MIN_LONG ;
 scalar_t__ PyArray_SIZE (int *) ;
 int * PyInt_FromLong (long) ;
 int * PyLong_FromLongLong (scalar_t__) ;

__attribute__((used)) static PyObject *
array_size_get(PyArrayObject *self)
{
    npy_intp size=PyArray_SIZE(self);

    return PyInt_FromLong((long) size);
}
