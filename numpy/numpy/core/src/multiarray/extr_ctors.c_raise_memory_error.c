
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int * PyArray_IntTupleFromIntp (int,int *) ;
 int * PyErr_NoMemory () ;
 int PyErr_SetObject (int *,int *) ;
 int PyErr_WriteUnraisable (int *) ;
 int * PyTuple_Pack (int,int *,int *) ;
 int Py_DECREF (int *) ;
 int npy_cache_import (char*,char*,int **) ;

__attribute__((used)) static PyObject *
raise_memory_error(int nd, npy_intp *dims, PyArray_Descr *descr)
{
    static PyObject *exc_type = ((void*)0);

    npy_cache_import(
        "numpy.core._exceptions", "_ArrayMemoryError",
        &exc_type);
    if (exc_type == ((void*)0)) {
        goto fail;
    }

    PyObject *shape = PyArray_IntTupleFromIntp(nd, dims);
    if (shape == ((void*)0)) {
        goto fail;
    }


    PyObject *exc_value = PyTuple_Pack(2, shape, (PyObject *)descr);
    Py_DECREF(shape);
    if (exc_value == ((void*)0)){
        goto fail;
    }
    PyErr_SetObject(exc_type, exc_value);
    Py_DECREF(exc_value);
    return ((void*)0);

fail:

    PyErr_WriteUnraisable(((void*)0));
    return PyErr_NoMemory();
}
