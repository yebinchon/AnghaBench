
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyArray_BASE (int *) ;
 int Py_INCREF (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
array_base_get(PyArrayObject *self)
{
    if (PyArray_BASE(self) == ((void*)0)) {
        Py_RETURN_NONE;
    }
    else {
        Py_INCREF(PyArray_BASE(self));
        return PyArray_BASE(self);
    }
}
