
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyArray_IterNew (int *) ;

__attribute__((used)) static PyObject *
array_flat_get(PyArrayObject *self)
{
    return PyArray_IterNew((PyObject *)self);
}
