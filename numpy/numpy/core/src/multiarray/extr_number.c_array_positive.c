
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int positive; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ DEPRECATE (char*) ;
 scalar_t__ PyArray_Copy (int *) ;
 int * PyArray_GenericInplaceUnaryFunction (int *,int ) ;
 int * PyArray_GenericUnaryFunction (int *,int ) ;
 int * PyArray_Return (int *) ;
 int PyErr_Fetch (int **,int **,int **) ;
 int PyErr_Restore (int *,int *,int *) ;
 scalar_t__ PyUFunc_HasOverride (int *) ;
 int Py_XDECREF (int *) ;
 scalar_t__ can_elide_temp_unary (int *) ;
 TYPE_1__ n_ops ;

__attribute__((used)) static PyObject *
array_positive(PyArrayObject *m1)
{
    PyObject *value;
    if (can_elide_temp_unary(m1)) {
        value = PyArray_GenericInplaceUnaryFunction(m1, n_ops.positive);
    }
    else {
        value = PyArray_GenericUnaryFunction(m1, n_ops.positive);
    }
    if (value == ((void*)0)) {





        PyObject *exc, *val, *tb;
        PyErr_Fetch(&exc, &val, &tb);
        if (PyUFunc_HasOverride((PyObject *)m1)) {
            PyErr_Restore(exc, val, tb);
            return ((void*)0);
        }
        Py_XDECREF(exc);
        Py_XDECREF(val);
        Py_XDECREF(tb);


        if (DEPRECATE("Applying '+' to a non-numerical array is "
                      "ill-defined. Returning a copy, but in the future "
                      "this will error.") < 0) {
            return ((void*)0);
        }
        value = PyArray_Return((PyArrayObject *)PyArray_Copy(m1));
    }
    return value;
}
