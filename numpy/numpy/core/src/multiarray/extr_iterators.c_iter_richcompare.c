
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;
typedef int PyArrayIterObject ;


 int PyArray_ResolveWritebackIfCopy (int *) ;
 int Py_DECREF (int *) ;
 int * array_richcompare (int *,int *,int) ;
 scalar_t__ iter_array (int *,int *) ;

__attribute__((used)) static PyObject *
iter_richcompare(PyArrayIterObject *self, PyObject *other, int cmp_op)
{
    PyArrayObject *new;
    PyObject *ret;
    new = (PyArrayObject *)iter_array(self, ((void*)0));
    if (new == ((void*)0)) {
        return ((void*)0);
    }
    ret = array_richcompare(new, other, cmp_op);
    PyArray_ResolveWritebackIfCopy(new);
    Py_DECREF(new);
    return ret;
}
