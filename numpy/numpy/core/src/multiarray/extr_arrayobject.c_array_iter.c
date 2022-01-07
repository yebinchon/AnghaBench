
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_NDIM (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int * PySeqIter_New (int *) ;

__attribute__((used)) static PyObject *
array_iter(PyArrayObject *arr)
{
    if (PyArray_NDIM(arr) == 0) {
        PyErr_SetString(PyExc_TypeError,
                        "iteration over a 0-d array");
        return ((void*)0);
    }
    return PySeqIter_New((PyObject *)arr);
}
