
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* tp_as_number; } ;
struct TYPE_3__ {int * (* nb_float ) (int *) ;} ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef int NPY_SCALARKIND ;


 int Floating ;
 int Integer ;
 int NPY_FLOAT_SCALAR ;
 int NPY_INTPOS_SCALAR ;
 int NPY_NOSCALAR ;
 scalar_t__ PyArray_Check (int *) ;
 scalar_t__ PyArray_ISFLOAT (int *) ;
 scalar_t__ PyArray_ISINTEGER (int *) ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyArray_NDIM (int *) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 double PyFloat_AsDouble (int *) ;
 scalar_t__ PyFloat_Check (int *) ;
 scalar_t__ PyIndex_Check (int *) ;
 scalar_t__ PyInt_AsLong (int *) ;
 scalar_t__ PyInt_AsSsize_t (int *) ;
 scalar_t__ PyInt_Check (int *) ;
 int * PyNumber_Index (int *) ;
 int Py_DECREF (int *) ;
 TYPE_2__* Py_TYPE (int *) ;
 scalar_t__ error_converting (scalar_t__) ;
 int * stub1 (int *) ;
 int * stub2 (int *) ;

__attribute__((used)) static NPY_SCALARKIND
is_scalar_with_conversion(PyObject *o2, double* out_exponent)
{
    PyObject *temp;
    const int optimize_fpexps = 1;

    if (PyInt_Check(o2)) {
        *out_exponent = (double)PyInt_AsLong(o2);
        return NPY_INTPOS_SCALAR;
    }
    if (optimize_fpexps && PyFloat_Check(o2)) {
        *out_exponent = PyFloat_AsDouble(o2);
        return NPY_FLOAT_SCALAR;
    }
    if (PyArray_Check(o2)) {
        if ((PyArray_NDIM((PyArrayObject *)o2) == 0) &&
                ((PyArray_ISINTEGER((PyArrayObject *)o2) ||
                 (optimize_fpexps && PyArray_ISFLOAT((PyArrayObject *)o2))))) {
            temp = Py_TYPE(o2)->tp_as_number->nb_float(o2);
            if (temp == ((void*)0)) {
                return NPY_NOSCALAR;
            }
            *out_exponent = PyFloat_AsDouble(o2);
            Py_DECREF(temp);
            if (PyArray_ISINTEGER((PyArrayObject *)o2)) {
                return NPY_INTPOS_SCALAR;
            }
            else {
                return NPY_FLOAT_SCALAR;
            }
        }
    }
    else if (PyArray_IsScalar(o2, Integer) ||
                (optimize_fpexps && PyArray_IsScalar(o2, Floating))) {
        temp = Py_TYPE(o2)->tp_as_number->nb_float(o2);
        if (temp == ((void*)0)) {
            return NPY_NOSCALAR;
        }
        *out_exponent = PyFloat_AsDouble(o2);
        Py_DECREF(temp);

        if (PyArray_IsScalar(o2, Integer)) {
                return NPY_INTPOS_SCALAR;
        }
        else {
            return NPY_FLOAT_SCALAR;
        }
    }
    else if (PyIndex_Check(o2)) {
        PyObject* value = PyNumber_Index(o2);
        Py_ssize_t val;
        if (value==((void*)0)) {
            if (PyErr_Occurred()) {
                PyErr_Clear();
            }
            return NPY_NOSCALAR;
        }
        val = PyInt_AsSsize_t(value);
        if (error_converting(val)) {
            PyErr_Clear();
            return NPY_NOSCALAR;
        }
        *out_exponent = (double) val;
        return NPY_INTPOS_SCALAR;
    }
    return NPY_NOSCALAR;
}
