
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;


 int * PyImport_ImportModule (char*) ;
 int * PyObject_CallMethod (int *,char*,char*,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
arraydescr_repr(PyArray_Descr *dtype)
{
    PyObject *_numpy_dtype;
    PyObject *res;
    _numpy_dtype = PyImport_ImportModule("numpy.core._dtype");
    if (_numpy_dtype == ((void*)0)) {
        return ((void*)0);
    }
    res = PyObject_CallMethod(_numpy_dtype, "__repr__", "O", dtype);
    Py_DECREF(_numpy_dtype);
    return res;
}
