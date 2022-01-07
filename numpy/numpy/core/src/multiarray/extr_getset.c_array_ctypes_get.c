
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_DATA (int *) ;
 int * PyImport_ImportModule (char*) ;
 int PyLong_FromVoidPtr (int ) ;
 int * PyObject_CallMethod (int *,char*,char*,int *,int ) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
array_ctypes_get(PyArrayObject *self)
{
    PyObject *_numpy_internal;
    PyObject *ret;
    _numpy_internal = PyImport_ImportModule("numpy.core._internal");
    if (_numpy_internal == ((void*)0)) {
        return ((void*)0);
    }
    ret = PyObject_CallMethod(_numpy_internal, "_ctypes", "ON", self,
                              PyLong_FromVoidPtr(PyArray_DATA(self)));
    Py_DECREF(_numpy_internal);
    return ret;
}
