
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyObject_Call (int *,int *,int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
forward_ndarray_method(PyArrayObject *self, PyObject *args, PyObject *kwds,
                            PyObject *forwarding_callable)
{
    PyObject *sargs, *ret;
    int i, n;


    n = PyTuple_GET_SIZE(args);
    sargs = PyTuple_New(n + 1);
    if (sargs == ((void*)0)) {
        return ((void*)0);
    }
    Py_INCREF(self);
    PyTuple_SET_ITEM(sargs, 0, (PyObject *)self);
    for (i = 0; i < n; ++i) {
        PyObject *item = PyTuple_GET_ITEM(args, i);
        Py_INCREF(item);
        PyTuple_SET_ITEM(sargs, i+1, item);
    }


    ret = PyObject_Call(forwarding_callable, sargs, kwds);
    Py_DECREF(sargs);
    return ret;
}
