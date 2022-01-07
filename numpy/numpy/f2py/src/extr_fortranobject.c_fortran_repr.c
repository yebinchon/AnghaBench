
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyFortranObject ;


 int PyErr_Clear () ;
 int * PyObject_GetAttrString (int *,char*) ;
 int PyString_AsString (int *) ;
 scalar_t__ PyString_Check (int *) ;
 int * PyString_FromFormat (char*,int ) ;
 int * PyString_FromString (char*) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int * PyUnicode_FromFormat (char*,int *) ;
 int * PyUnicode_FromString (char*) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static PyObject *
fortran_repr(PyFortranObject *fp)
{
    PyObject *name = ((void*)0), *repr = ((void*)0);
    name = PyObject_GetAttrString((PyObject *)fp, "__name__");
    PyErr_Clear();
    if (name != ((void*)0) && PyString_Check(name)) {
        repr = PyString_FromFormat("<fortran %s>", PyString_AsString(name));
    }
    else {
        repr = PyString_FromString("<fortran object>");
    }

    Py_XDECREF(name);
    return repr;
}
