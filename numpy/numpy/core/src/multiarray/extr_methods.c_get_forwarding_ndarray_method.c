
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyDict_GetItemString (int ,char const*) ;
 int PyErr_Format (int ,char*,char const*) ;
 int PyExc_RuntimeError ;
 int * PyImport_ImportModule (char*) ;
 int PyModule_GetDict (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
get_forwarding_ndarray_method(const char *name)
{
    PyObject *module_methods, *callable;


    module_methods = PyImport_ImportModule("numpy.core._methods");
    if (module_methods == ((void*)0)) {
        return ((void*)0);
    }
    callable = PyDict_GetItemString(PyModule_GetDict(module_methods), name);
    if (callable == ((void*)0)) {
        Py_DECREF(module_methods);
        PyErr_Format(PyExc_RuntimeError,
                "NumPy internal error: could not find function "
                "numpy.core._methods.%s", name);
    }
    else {
        Py_INCREF(callable);
    }
    Py_DECREF(module_methods);
    return callable;
}
