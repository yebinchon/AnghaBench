
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayMultiIterObject ;


 int PyArg_ParseTuple (int *,char*) ;
 int PyArray_MultiIter_RESET (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
arraymultiter_reset(PyArrayMultiIterObject *self, PyObject *args)
{
    if (!PyArg_ParseTuple(args, "")) {
        return ((void*)0);
    }
    PyArray_MultiIter_RESET(self);
    Py_RETURN_NONE;
}
