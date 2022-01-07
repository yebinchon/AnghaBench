
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int npy_longlong ;
struct TYPE_5__ {int nin; scalar_t__ core_enabled; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_NOTYPE ;
 scalar_t__* PyArray_DIMS (int *) ;
 scalar_t__ PyArray_FROM_O (int *) ;
 scalar_t__ PyArray_FromObject (int *,int ,int ,int ) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_Reshape (int *,int *) ;
 int PyErr_Format (int ,char*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 int PyInt_FromLong (long) ;
 int PyLong_FromLongLong (int ) ;
 int * PyNumber_Add (int *,int *) ;
 scalar_t__ PyObject_IsInstance (int *,int *) ;
 int * PySequence_GetItem (int *,int) ;
 int PySequence_Length (int *) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int ) ;
 int PyUFunc_CheckOverride (TYPE_1__*,char*,int *,int *,int **) ;
 int * Py_BuildValue (char*,int *,int *) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int npy_cache_import (char*,char*,int **) ;
 int * ufunc_generic_call (TYPE_1__*,int *,int *) ;

__attribute__((used)) static PyObject *
ufunc_outer(PyUFuncObject *ufunc, PyObject *args, PyObject *kwds)
{
    int i;
    int errval;
    PyObject *override = ((void*)0);
    PyObject *ret;
    PyArrayObject *ap1 = ((void*)0), *ap2 = ((void*)0), *ap_new = ((void*)0);
    PyObject *new_args, *tmp;
    PyObject *shape1, *shape2, *newshape;
    static PyObject *_numpy_matrix;


    errval = PyUFunc_CheckOverride(ufunc, "outer", args, kwds, &override);
    if (errval) {
        return ((void*)0);
    }
    else if (override) {
        return override;
    }

    if (ufunc->core_enabled) {
        PyErr_Format(PyExc_TypeError,
                     "method outer is not allowed in ufunc with non-trivial" " signature");

        return ((void*)0);
    }

    if (ufunc->nin != 2) {
        PyErr_SetString(PyExc_ValueError,
                        "outer product only supported " "for binary functions");

        return ((void*)0);
    }

    if (PySequence_Length(args) != 2) {
        PyErr_SetString(PyExc_TypeError, "exactly two arguments expected");
        return ((void*)0);
    }

    tmp = PySequence_GetItem(args, 0);
    if (tmp == ((void*)0)) {
        return ((void*)0);
    }

    npy_cache_import(
        "numpy",
        "matrix",
        &_numpy_matrix);

    if (PyObject_IsInstance(tmp, _numpy_matrix)) {
        ap1 = (PyArrayObject *) PyArray_FromObject(tmp, NPY_NOTYPE, 0, 0);
    }
    else {
        ap1 = (PyArrayObject *) PyArray_FROM_O(tmp);
    }
    Py_DECREF(tmp);
    if (ap1 == ((void*)0)) {
        return ((void*)0);
    }
    tmp = PySequence_GetItem(args, 1);
    if (tmp == ((void*)0)) {
        return ((void*)0);
    }
    if (PyObject_IsInstance(tmp, _numpy_matrix)) {
        ap2 = (PyArrayObject *) PyArray_FromObject(tmp, NPY_NOTYPE, 0, 0);
    }
    else {
        ap2 = (PyArrayObject *) PyArray_FROM_O(tmp);
    }
    Py_DECREF(tmp);
    if (ap2 == ((void*)0)) {
        Py_DECREF(ap1);
        return ((void*)0);
    }

    shape1 = PyTuple_New(PyArray_NDIM(ap1));
    if (shape1 == ((void*)0)) {
        goto fail;
    }
    for (i = 0; i < PyArray_NDIM(ap1); i++) {
        PyTuple_SET_ITEM(shape1, i,
                PyLong_FromLongLong((npy_longlong)PyArray_DIMS(ap1)[i]));
    }
    shape2 = PyTuple_New(PyArray_NDIM(ap2));
    for (i = 0; i < PyArray_NDIM(ap2); i++) {
        PyTuple_SET_ITEM(shape2, i, PyInt_FromLong((long) 1));
    }
    if (shape2 == ((void*)0)) {
        Py_DECREF(shape1);
        goto fail;
    }
    newshape = PyNumber_Add(shape1, shape2);
    Py_DECREF(shape1);
    Py_DECREF(shape2);
    if (newshape == ((void*)0)) {
        goto fail;
    }
    ap_new = (PyArrayObject *)PyArray_Reshape(ap1, newshape);
    Py_DECREF(newshape);
    if (ap_new == ((void*)0)) {
        goto fail;
    }
    new_args = Py_BuildValue("(OO)", ap_new, ap2);
    Py_DECREF(ap1);
    Py_DECREF(ap2);
    Py_DECREF(ap_new);
    ret = ufunc_generic_call(ufunc, new_args, kwds);
    Py_DECREF(new_args);
    return ret;

 fail:
    Py_XDECREF(ap1);
    Py_XDECREF(ap2);
    Py_XDECREF(ap_new);
    return ((void*)0);
}
