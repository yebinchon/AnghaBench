
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyObject_CallFunctionObjArgs (int *,int *,int *,int *) ;
 int Py_INCREF (int *) ;
 int * Py_NotImplemented ;

__attribute__((used)) static PyObject *
PyArray_GenericInplaceUnaryFunction(PyArrayObject *m1, PyObject *op)
{
    if (op == ((void*)0)) {
        Py_INCREF(Py_NotImplemented);
        return Py_NotImplemented;
    }
    return PyObject_CallFunctionObjArgs(op, m1, m1, ((void*)0));
}
