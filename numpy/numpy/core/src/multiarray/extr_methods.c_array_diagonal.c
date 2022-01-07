
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*,int*,int*) ;
 scalar_t__ PyArray_Diagonal (int *,int,int,int) ;
 int * PyArray_Return (int *) ;

__attribute__((used)) static PyObject *
array_diagonal(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis1 = 0, axis2 = 1, offset = 0;
    static char *kwlist[] = {"offset", "axis1", "axis2", ((void*)0)};
    PyArrayObject *ret;

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|iii:diagonal", kwlist,
                                     &offset,
                                     &axis1,
                                     &axis2)) {
        return ((void*)0);
    }

    ret = (PyArrayObject *)PyArray_Diagonal(self, offset, axis1, axis2);
    return PyArray_Return(ret);
}
