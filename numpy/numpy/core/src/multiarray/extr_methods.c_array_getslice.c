
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*,int **,int **) ;
 int * PyObject_GetItem (int *,int *) ;
 int * PySlice_New (int *,int *,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
array_getslice(PyArrayObject *self, PyObject *args)
{
    PyObject *start, *stop, *slice, *result;
    if (!PyArg_ParseTuple(args, "OO:__getslice__", &start, &stop)) {
        return ((void*)0);
    }

    slice = PySlice_New(start, stop, ((void*)0));
    if (slice == ((void*)0)) {
        return ((void*)0);
    }


    result = PyObject_GetItem((PyObject *)self, slice);
    Py_DECREF(slice);
    return result;
}
