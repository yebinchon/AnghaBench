
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*) ;
 int * PyArray_ToList (int *) ;

__attribute__((used)) static PyObject *
array_tolist(PyArrayObject *self, PyObject *args)
{
    if (!PyArg_ParseTuple(args, "")) {
        return ((void*)0);
    }
    return PyArray_ToList(self);
}
