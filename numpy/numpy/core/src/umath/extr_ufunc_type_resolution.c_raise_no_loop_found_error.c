
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_4__ {size_t nargs; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int PyErr_SetObject (int *,int *) ;
 int * PyTuple_New (size_t) ;
 int * PyTuple_Pack (int,TYPE_1__*,int *) ;
 int PyTuple_SET_ITEM (int *,size_t,int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int npy_cache_import (char*,char*,int **) ;

__attribute__((used)) static int
raise_no_loop_found_error(
        PyUFuncObject *ufunc, PyArray_Descr **dtypes)
{
    static PyObject *exc_type = ((void*)0);
    PyObject *exc_value;
    PyObject *dtypes_tup;
    npy_intp i;

    npy_cache_import(
        "numpy.core._exceptions", "_UFuncNoLoopError",
        &exc_type);
    if (exc_type == ((void*)0)) {
        return -1;
    }


    dtypes_tup = PyTuple_New(ufunc->nargs);
    if (dtypes_tup == ((void*)0)) {
        return -1;
    }
    for (i = 0; i < ufunc->nargs; ++i) {
        Py_INCREF(dtypes[i]);
        PyTuple_SET_ITEM(dtypes_tup, i, (PyObject *)dtypes[i]);
    }


    exc_value = PyTuple_Pack(2, ufunc, dtypes_tup);
    Py_DECREF(dtypes_tup);
    if (exc_value == ((void*)0)){
        return -1;
    }
    PyErr_SetObject(exc_type, exc_value);
    Py_DECREF(exc_value);

    return -1;
}
