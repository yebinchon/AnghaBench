
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numiter; scalar_t__* iters; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayMultiIterObject ;


 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int Py_INCREF (scalar_t__) ;

__attribute__((used)) static PyObject *
arraymultiter_iters_get(PyArrayMultiIterObject *self)
{
    PyObject *res;
    int i, n;

    n = self->numiter;
    res = PyTuple_New(n);
    if (res == ((void*)0)) {
        return res;
    }
    for (i = 0; i < n; i++) {
        Py_INCREF(self->iters[i]);
        PyTuple_SET_ITEM(res, i, (PyObject *)self->iters[i]);
    }
    return res;
}
