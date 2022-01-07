
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;


 int NPY_FAIL ;
 int PyArray_DescrConverter (int ,int **) ;
 int PyBytes_Check (int *) ;
 int PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyExc_ValueError ;
 int * PyImport_ImportModule (char*) ;
 int PyList_Check (int *) ;
 int PyList_GET_ITEM (int *,int ) ;
 int PyList_GET_SIZE (int *) ;
 int * PyObject_CallMethod (int *,char*,char*,int *) ;
 int Py_DECREF (int *) ;
 int * _convert_from_list (int *,int) ;

__attribute__((used)) static PyArray_Descr *
_convert_from_commastring(PyObject *obj, int align)
{
    PyObject *listobj;
    PyArray_Descr *res;
    PyObject *_numpy_internal;

    if (!PyBytes_Check(obj)) {
        return ((void*)0);
    }
    _numpy_internal = PyImport_ImportModule("numpy.core._internal");
    if (_numpy_internal == ((void*)0)) {
        return ((void*)0);
    }
    listobj = PyObject_CallMethod(_numpy_internal, "_commastring", "O", obj);
    Py_DECREF(_numpy_internal);
    if (listobj == ((void*)0)) {
        return ((void*)0);
    }
    if (!PyList_Check(listobj) || PyList_GET_SIZE(listobj) < 1) {
        PyErr_SetString(PyExc_RuntimeError,
                "_commastring is not returning a list with len >= 1");
        Py_DECREF(listobj);
        return ((void*)0);
    }
    if (PyList_GET_SIZE(listobj) == 1) {
        int retcode;
        retcode = PyArray_DescrConverter(PyList_GET_ITEM(listobj, 0),
                                                &res);
        if (retcode == NPY_FAIL) {
            res = ((void*)0);
        }
    }
    else {
        res = _convert_from_list(listobj, align);
    }
    Py_DECREF(listobj);
    if (!res && !PyErr_Occurred()) {
        PyErr_SetString(PyExc_ValueError,
                "invalid data-type");
        return ((void*)0);
    }
    return res;
}
