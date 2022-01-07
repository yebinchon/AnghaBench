
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*,int*,int*) ;
 int * PyArray_SwapAxes (int *,int,int) ;

__attribute__((used)) static PyObject *
array_swapaxes(PyArrayObject *self, PyObject *args)
{
    int axis1, axis2;

    if (!PyArg_ParseTuple(args, "ii:swapaxes", &axis1, &axis2)) {
        return ((void*)0);
    }
    return PyArray_SwapAxes(self, axis1, axis2);
}
