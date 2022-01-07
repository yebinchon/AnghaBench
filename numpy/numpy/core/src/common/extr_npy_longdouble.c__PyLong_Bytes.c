
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyObject_Str (int *) ;
 int * PyUnicode_AsUTF8String (int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
_PyLong_Bytes(PyObject *long_obj) {
    PyObject *bytes;
    bytes = PyObject_Str(long_obj);

    return bytes;
}
