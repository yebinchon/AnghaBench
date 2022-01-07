
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyArray_CheckExact (int *) ;
 int * PyArray_LookupSpecial (int *,char*) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 int Py_INCREF (int *) ;
 int * get_ndarray_array_function () ;

__attribute__((used)) static PyObject *
get_array_function(PyObject *obj)
{
    static PyObject *ndarray_array_function = ((void*)0);
    PyObject *array_function;

    if (ndarray_array_function == ((void*)0)) {
        ndarray_array_function = get_ndarray_array_function();
    }


    if (PyArray_CheckExact(obj)) {
        Py_INCREF(ndarray_array_function);
        return ndarray_array_function;
    }

    array_function = PyArray_LookupSpecial(obj, "__array_function__");
    if (array_function == ((void*)0) && PyErr_Occurred()) {
        PyErr_Clear();
    }

    return array_function;
}
