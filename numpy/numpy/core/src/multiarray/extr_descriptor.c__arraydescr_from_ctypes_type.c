
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyTypeObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int PyArrayDescr_Type ;
 int PyErr_BadInternalCall () ;
 int * PyImport_ImportModule (char*) ;
 int * PyObject_CallMethod (int *,char*,char*,int *) ;
 int PyObject_TypeCheck (int *,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyArray_Descr *
_arraydescr_from_ctypes_type(PyTypeObject *type)
{
    PyObject *_numpy_dtype_ctypes;
    PyObject *res;


    _numpy_dtype_ctypes = PyImport_ImportModule("numpy.core._dtype_ctypes");
    if (_numpy_dtype_ctypes == ((void*)0)) {
        return ((void*)0);
    }
    res = PyObject_CallMethod(_numpy_dtype_ctypes, "dtype_from_ctypes_type", "O", (PyObject *)type);
    Py_DECREF(_numpy_dtype_ctypes);
    if (res == ((void*)0)) {
        return ((void*)0);
    }





    if (!PyObject_TypeCheck(res, &PyArrayDescr_Type)) {
        Py_DECREF(res);
        PyErr_BadInternalCall();
        return ((void*)0);
    }

    return (PyArray_Descr *)res;
}
