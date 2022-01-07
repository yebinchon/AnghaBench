
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyImport_ImportModule (char*) ;
 int * PyObject_CallMethod (int *,char*,char*,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
_PyNumber_Oct(PyObject *o) {
    PyObject *res;
    PyObject *mod = PyImport_ImportModule("__builtin__");
    if (mod == ((void*)0)) {
        return ((void*)0);
    }
    res = PyObject_CallMethod(mod, "oct", "(O)", o);
    Py_DECREF(mod);
    return res;
}
