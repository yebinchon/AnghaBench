
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*,int **) ;
 scalar_t__ PyArray_FillWithScalar (int *,int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
array_fill(PyArrayObject *self, PyObject *args)
{
    PyObject *obj;
    if (!PyArg_ParseTuple(args, "O:fill", &obj)) {
        return ((void*)0);
    }
    if (PyArray_FillWithScalar(self, obj) < 0) {
        return ((void*)0);
    }
    Py_RETURN_NONE;
}
