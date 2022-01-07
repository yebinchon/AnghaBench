
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_ISONESEGMENT (int *) ;
 scalar_t__ PyArray_ISWRITEABLE (int *) ;
 scalar_t__ PyArray_NBYTES (int *) ;
 int * PyBuffer_FromObject (int *,int ,int ) ;
 int * PyBuffer_FromReadWriteObject (int *,int ,int ) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int * PyMemoryView_FromObject (int *) ;

__attribute__((used)) static PyObject *
array_data_get(PyArrayObject *self)
{



    npy_intp nbytes;
    if (!(PyArray_ISONESEGMENT(self))) {
        PyErr_SetString(PyExc_AttributeError, "cannot get single-" "segment buffer for discontiguous array");

        return ((void*)0);
    }
    nbytes = PyArray_NBYTES(self);
    if (PyArray_ISWRITEABLE(self)) {
        return PyBuffer_FromReadWriteObject((PyObject *)self, 0, (Py_ssize_t) nbytes);
    }
    else {
        return PyBuffer_FromObject((PyObject *)self, 0, (Py_ssize_t) nbytes);
    }

}
