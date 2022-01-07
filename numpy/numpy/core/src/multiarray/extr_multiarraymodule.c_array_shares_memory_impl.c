
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mem_overlap_t ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ MEM_OVERLAP_NO ;
 scalar_t__ MEM_OVERLAP_OVERFLOW ;
 scalar_t__ MEM_OVERLAP_TOO_HARD ;
 scalar_t__ MEM_OVERLAP_YES ;
 int NPY_BEGIN_THREADS ;
 int NPY_BEGIN_THREADS_DEF ;
 int NPY_END_THREADS ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **,int **) ;
 scalar_t__ PyArray_Check (int *) ;
 scalar_t__ PyArray_FROM_O (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetString (int *,char*) ;
 int * PyExc_OverflowError ;
 int * PyExc_RuntimeError ;
 int * PyExc_ValueError ;
 int PyInt_AsSsize_t (int *) ;
 scalar_t__ PyInt_Check (int *) ;
 int PyLong_AsSsize_t (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;
 int Py_XDECREF (int *) ;
 int npy_cache_import (char*,char*,int **) ;
 scalar_t__ solve_may_share_memory (int *,int *,int) ;

__attribute__((used)) static PyObject *
array_shares_memory_impl(PyObject *args, PyObject *kwds, Py_ssize_t default_max_work,
                         int raise_exceptions)
{
    PyObject * self_obj = ((void*)0);
    PyObject * other_obj = ((void*)0);
    PyArrayObject * self = ((void*)0);
    PyArrayObject * other = ((void*)0);
    PyObject *max_work_obj = ((void*)0);
    static char *kwlist[] = {"self", "other", "max_work", ((void*)0)};

    mem_overlap_t result;
    static PyObject *too_hard_cls = ((void*)0);
    Py_ssize_t max_work;
    NPY_BEGIN_THREADS_DEF;

    max_work = default_max_work;

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "OO|O:shares_memory_impl", kwlist,
                                     &self_obj, &other_obj, &max_work_obj)) {
        return ((void*)0);
    }

    if (PyArray_Check(self_obj)) {
        self = (PyArrayObject*)self_obj;
        Py_INCREF(self);
    }
    else {


        self = (PyArrayObject*)PyArray_FROM_O(self_obj);
        if (self == ((void*)0)) {
            goto fail;
        }
    }

    if (PyArray_Check(other_obj)) {
        other = (PyArrayObject*)other_obj;
        Py_INCREF(other);
    }
    else {
        other = (PyArrayObject*)PyArray_FROM_O(other_obj);
        if (other == ((void*)0)) {
            goto fail;
        }
    }

    if (max_work_obj == ((void*)0) || max_work_obj == Py_None) {

    }
    else if (PyLong_Check(max_work_obj)) {
        max_work = PyLong_AsSsize_t(max_work_obj);
        if (PyErr_Occurred()) {
            goto fail;
        }
    }

    else if (PyInt_Check(max_work_obj)) {
        max_work = PyInt_AsSsize_t(max_work_obj);
    }

    else {
        PyErr_SetString(PyExc_ValueError, "max_work must be an integer");
        goto fail;
    }

    if (max_work < -2) {
        PyErr_SetString(PyExc_ValueError, "Invalid value for max_work");
        goto fail;
    }

    NPY_BEGIN_THREADS;
    result = solve_may_share_memory(self, other, max_work);
    NPY_END_THREADS;

    Py_XDECREF(self);
    Py_XDECREF(other);

    if (result == MEM_OVERLAP_NO) {
        Py_RETURN_FALSE;
    }
    else if (result == MEM_OVERLAP_YES) {
        Py_RETURN_TRUE;
    }
    else if (result == MEM_OVERLAP_OVERFLOW) {
        if (raise_exceptions) {
            PyErr_SetString(PyExc_OverflowError,
                            "Integer overflow in computing overlap");
            return ((void*)0);
        }
        else {

            Py_RETURN_TRUE;
        }
    }
    else if (result == MEM_OVERLAP_TOO_HARD) {
        if (raise_exceptions) {
            npy_cache_import("numpy.core._exceptions", "TooHardError",
                             &too_hard_cls);
            if (too_hard_cls) {
                PyErr_SetString(too_hard_cls, "Exceeded max_work");
            }
            return ((void*)0);
        }
        else {

            Py_RETURN_TRUE;
        }
    }
    else {

        PyErr_SetString(PyExc_RuntimeError,
                        "Error in computing overlap");
        return ((void*)0);
    }

fail:
    Py_XDECREF(self);
    Py_XDECREF(other);
    return ((void*)0);
}
