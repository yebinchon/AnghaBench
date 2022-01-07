
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_bool ;
typedef int PyUFuncObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 int NPY_UF_DBG_PRINT1 (char*,char const*) ;
 int NPY_UNSAFE_CASTING ;
 scalar_t__ PyArray_ISOBJECT (int *) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_SIZE (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyUFunc_ReduceWrapper (int *,int *,int *,int *,int *,int ,int*,int,int,int ,int *,int ,int *,int,char const*,int) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ _get_bufsize_errmask (int *,char*,int*,int*) ;
 int * _get_identity (int *,int*) ;
 int memset (int*,int ,int) ;
 int npy_cache_import (char*,char*,int **) ;
 int reduce_loop ;
 scalar_t__ reduce_type_resolver (int *,int *,int *,int **) ;
 char* ufunc_get_name_cstr (int *) ;

__attribute__((used)) static PyArrayObject *
PyUFunc_Reduce(PyUFuncObject *ufunc, PyArrayObject *arr, PyArrayObject *out,
        int naxes, int *axes, PyArray_Descr *odtype, int keepdims,
        PyObject *initial, PyArrayObject *wheremask)
{
    int iaxes, ndim;
    npy_bool reorderable;
    npy_bool axis_flags[NPY_MAXDIMS];
    PyArray_Descr *dtype;
    PyArrayObject *result;
    PyObject *identity;
    const char *ufunc_name = ufunc_get_name_cstr(ufunc);

    int buffersize = 0, errormask = 0;
    static PyObject *NoValue = ((void*)0);

    NPY_UF_DBG_PRINT1("\nEvaluating ufunc %s.reduce\n", ufunc_name);

    npy_cache_import("numpy", "_NoValue", &NoValue);
    if (NoValue == ((void*)0)) return ((void*)0);

    ndim = PyArray_NDIM(arr);


    memset(axis_flags, 0, ndim);
    for (iaxes = 0; iaxes < naxes; ++iaxes) {
        int axis = axes[iaxes];
        if (axis_flags[axis]) {
            PyErr_SetString(PyExc_ValueError,
                    "duplicate value in 'axis'");
            return ((void*)0);
        }
        axis_flags[axis] = 1;
    }

    if (_get_bufsize_errmask(((void*)0), "reduce", &buffersize, &errormask) < 0) {
        return ((void*)0);
    }


    identity = _get_identity(ufunc, &reorderable);
    if (identity == ((void*)0)) {
        return ((void*)0);
    }


    if (initial == ((void*)0) || initial == NoValue) {
        initial = identity;





        if (initial != Py_None && PyArray_ISOBJECT(arr) && PyArray_SIZE(arr) != 0) {
            Py_DECREF(initial);
            initial = Py_None;
            Py_INCREF(initial);
        }
    } else {
        Py_DECREF(identity);
        Py_INCREF(initial);
    }


    if (reduce_type_resolver(ufunc, arr, odtype, &dtype) < 0) {
        Py_DECREF(initial);
        return ((void*)0);
    }

    result = PyUFunc_ReduceWrapper(arr, out, wheremask, dtype, dtype,
                                   NPY_UNSAFE_CASTING,
                                   axis_flags, reorderable,
                                   keepdims, 0,
                                   initial,
                                   reduce_loop,
                                   ufunc, buffersize, ufunc_name, errormask);

    Py_DECREF(dtype);
    Py_DECREF(initial);
    return result;
}
