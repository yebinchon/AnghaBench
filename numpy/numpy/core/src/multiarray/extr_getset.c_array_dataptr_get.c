
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_WRITEABLE ;
 int PyArray_DATA (int *) ;
 int PyArray_FLAGS (int *) ;
 int PyLong_FromVoidPtr (int ) ;
 int * Py_BuildValue (char*,int ,int ) ;
 int Py_False ;
 int Py_True ;

__attribute__((used)) static PyObject *
array_dataptr_get(PyArrayObject *self)
{
    return Py_BuildValue("NO",
                         PyLong_FromVoidPtr(PyArray_DATA(self)),
                         (PyArray_FLAGS(self) & NPY_ARRAY_WRITEABLE ? Py_False :
                          Py_True));
}
