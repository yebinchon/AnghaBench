
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_KEEPORDER ;
 int PyArg_ParseTuple (int *,char*) ;
 int * PyArray_NewCopy (int *,int ) ;

__attribute__((used)) static PyObject *
array_copy_keeporder(PyArrayObject *self, PyObject *args)
{
    if (!PyArg_ParseTuple(args, ":__copy__")) {
        return ((void*)0);
    }
    return PyArray_NewCopy(self, NPY_KEEPORDER);
}
