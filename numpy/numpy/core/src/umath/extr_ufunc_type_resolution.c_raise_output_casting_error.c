
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyUFuncObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int NPY_CASTING ;


 int npy_cache_import (char*,char*,int **) ;
 int raise_casting_error (int *,int *,int ,int *,int *,int ) ;

__attribute__((used)) static int
raise_output_casting_error(
        PyUFuncObject *ufunc,
        NPY_CASTING casting,
        PyArray_Descr *from,
        PyArray_Descr *to,
        npy_intp i)
{
    static PyObject *exc_type = ((void*)0);
    npy_cache_import(
        "numpy.core._exceptions", "_UFuncOutputCastingError",
        &exc_type);
    if (exc_type == ((void*)0)) {
        return -1;
    }

    return raise_casting_error(exc_type, ufunc, casting, from, to, i);
}
