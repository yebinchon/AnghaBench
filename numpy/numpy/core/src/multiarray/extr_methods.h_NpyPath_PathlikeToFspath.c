
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyObject_CallFunctionObjArgs (int *,int *,int *) ;
 int PyObject_IsInstance (int *,int *) ;
 int Py_INCREF (int *) ;
 int npy_cache_import (char*,char*,int **) ;

__attribute__((used)) static inline PyObject *
NpyPath_PathlikeToFspath(PyObject *file)
{
    static PyObject *os_PathLike = ((void*)0);
    static PyObject *os_fspath = ((void*)0);
    npy_cache_import("numpy.compat", "os_PathLike", &os_PathLike);
    if (os_PathLike == ((void*)0)) {
        return ((void*)0);
    }
    npy_cache_import("numpy.compat", "os_fspath", &os_fspath);
    if (os_fspath == ((void*)0)) {
        return ((void*)0);
    }

    if (!PyObject_IsInstance(file, os_PathLike)) {
        Py_INCREF(file);
        return file;
    }
    return PyObject_CallFunctionObjArgs(os_fspath, file, ((void*)0));
}
