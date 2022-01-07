
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_DESCR (int *) ;
 int Py_INCREF (scalar_t__) ;

__attribute__((used)) static PyObject *
array_descr_get(PyArrayObject *self)
{
    Py_INCREF(PyArray_DESCR(self));
    return (PyObject *)PyArray_DESCR(self);
}
