
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Py_ssize_t ;
typedef int PyArrayObject ;


 void* PyArray_DATA (int *) ;
 scalar_t__ PyArray_ISONESEGMENT (int *) ;
 scalar_t__ PyArray_NBYTES (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;

__attribute__((used)) static Py_ssize_t
array_getreadbuf(PyArrayObject *self, Py_ssize_t segment, void **ptrptr)
{
    if (segment != 0) {
        PyErr_SetString(PyExc_ValueError,
                        "accessing non-existing array segment");
        return -1;
    }
    if (PyArray_ISONESEGMENT(self)) {
        *ptrptr = PyArray_DATA(self);
        return PyArray_NBYTES(self);
    }
    PyErr_SetString(PyExc_ValueError, "array is not a single segment");
    *ptrptr = ((void*)0);
    return -1;
}
