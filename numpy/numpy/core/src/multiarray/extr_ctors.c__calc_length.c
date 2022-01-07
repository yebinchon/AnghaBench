
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;


 int PyArray_MIN (int,int) ;
 scalar_t__ PyComplex_Check (int *) ;
 double PyComplex_ImagAsDouble (int *) ;
 double PyComplex_RealAsDouble (int *) ;
 int PyErr_Clear () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 double PyFloat_AsDouble (int *) ;
 int * PyInt_FromLong (int ) ;
 int * PyNumber_Add (int *,int *) ;
 int * PyNumber_Subtract (int *,int *) ;
 int * PyNumber_TrueDivide (int *,int *) ;
 int PyObject_RichCompareBool (int *,int *,int ) ;
 scalar_t__ PyTuple_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_EQ ;
 int Py_NE ;
 int _arange_safe_ceil_to_intp (double) ;
 scalar_t__ error_converting (int) ;
 scalar_t__ npy_signbit (double) ;

__attribute__((used)) static npy_intp
_calc_length(PyObject *start, PyObject *stop, PyObject *step, PyObject **next, int cmplx)
{
    npy_intp len, tmp;
    PyObject *zero, *val;
    int next_is_nonzero, val_is_zero;
    double value;

    *next = PyNumber_Subtract(stop, start);
    if (!(*next)) {
        if (PyTuple_Check(stop)) {
            PyErr_Clear();
            PyErr_SetString(PyExc_TypeError,
                            "arange: scalar arguments expected " "instead of a tuple.");

        }
        return -1;
    }

    zero = PyInt_FromLong(0);
    if (!zero) {
        Py_DECREF(*next);
        *next = ((void*)0);
        return -1;
    }

    next_is_nonzero = PyObject_RichCompareBool(*next, zero, Py_NE);
    if (next_is_nonzero == -1) {
        Py_DECREF(zero);
        Py_DECREF(*next);
        *next = ((void*)0);
        return -1;
    }
    val = PyNumber_TrueDivide(*next, step);
    Py_DECREF(*next);
    *next = ((void*)0);

    if (!val) {
        Py_DECREF(zero);
        return -1;
    }

    val_is_zero = PyObject_RichCompareBool(val, zero, Py_EQ);
    Py_DECREF(zero);
    if (val_is_zero == -1) {
        Py_DECREF(val);
        return -1;
    }

    if (cmplx && PyComplex_Check(val)) {
        value = PyComplex_RealAsDouble(val);
        if (error_converting(value)) {
            Py_DECREF(val);
            return -1;
        }
        len = _arange_safe_ceil_to_intp(value);
        if (error_converting(len)) {
            Py_DECREF(val);
            return -1;
        }
        value = PyComplex_ImagAsDouble(val);
        Py_DECREF(val);
        if (error_converting(value)) {
            return -1;
        }
        tmp = _arange_safe_ceil_to_intp(value);
        if (error_converting(tmp)) {
            return -1;
        }
        len = PyArray_MIN(len, tmp);
    }
    else {
        value = PyFloat_AsDouble(val);
        Py_DECREF(val);
        if (error_converting(value)) {
            return -1;
        }


        if (val_is_zero && next_is_nonzero) {
            if (npy_signbit(value)) {
                len = 0;
            }
            else {
                len = 1;
            }
        }
        else {
            len = _arange_safe_ceil_to_intp(value);
            if (error_converting(len)) {
                return -1;
            }
        }
    }

    if (len > 0) {
        *next = PyNumber_Add(start, step);
        if (!*next) {
            return -1;
        }
    }
    return len;
}
