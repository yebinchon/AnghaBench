
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*,int **,int **,int **) ;
 scalar_t__ PyObject_SetItem (int *,int *,int *) ;
 int * PySlice_New (int *,int *,int *) ;
 int Py_DECREF (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
array_setslice(PyArrayObject *self, PyObject *args)
{
    PyObject *start, *stop, *value, *slice;
    if (!PyArg_ParseTuple(args, "OOO:__setslice__", &start, &stop, &value)) {
        return ((void*)0);
    }

    slice = PySlice_New(start, stop, ((void*)0));
    if (slice == ((void*)0)) {
        return ((void*)0);
    }


    if (PyObject_SetItem((PyObject *)self, slice, value) < 0) {
        Py_DECREF(slice);
        return ((void*)0);
    }
    Py_DECREF(slice);
    Py_RETURN_NONE;
}
