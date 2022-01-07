
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyUFuncObject ;
typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_DESCR (int *) ;
 int PyErr_SetObject (int *,int *) ;
 int * Py_BuildValue (char*,int *,int *,int *) ;
 int Py_DECREF (int *) ;
 int npy_cache_import (char*,char*,int **) ;

__attribute__((used)) static int
raise_binary_type_reso_error(PyUFuncObject *ufunc, PyArrayObject **operands) {
    static PyObject *exc_type = ((void*)0);
    PyObject *exc_value;

    npy_cache_import(
        "numpy.core._exceptions", "_UFuncBinaryResolutionError",
        &exc_type);
    if (exc_type == ((void*)0)) {
        return -1;
    }


    exc_value = Py_BuildValue(
        "O(OO)", ufunc,
        (PyObject *)PyArray_DESCR(operands[0]),
        (PyObject *)PyArray_DESCR(operands[1])
    );
    if (exc_value == ((void*)0)){
        return -1;
    }
    PyErr_SetObject(exc_type, exc_value);
    Py_DECREF(exc_value);

    return -1;
}
