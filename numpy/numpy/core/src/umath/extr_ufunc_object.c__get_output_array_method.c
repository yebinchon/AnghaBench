
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyArray_CheckExact (int *) ;
 int PyCallable_Check (int *) ;
 int PyErr_Clear () ;
 int * PyObject_GetAttr (int *,int *) ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int Py_RETURN_NONE ;
 int Py_XINCREF (int *) ;

__attribute__((used)) static PyObject *
_get_output_array_method(PyObject *obj, PyObject *method,
                         PyObject *input_method) {
    if (obj != Py_None) {
        PyObject *ometh;

        if (PyArray_CheckExact(obj)) {




            Py_RETURN_NONE;
        }

        ometh = PyObject_GetAttr(obj, method);
        if (ometh == ((void*)0)) {
            PyErr_Clear();
        }
        else if (!PyCallable_Check(ometh)) {
            Py_DECREF(ometh);
        }
        else {

            return ometh;
        }
    }


    Py_XINCREF(input_method);
    return input_method;
}
