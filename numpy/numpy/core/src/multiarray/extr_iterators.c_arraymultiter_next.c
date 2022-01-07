
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ao; int dataptr; } ;
struct TYPE_5__ {int numiter; scalar_t__ index; scalar_t__ size; TYPE_2__** iters; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayMultiIterObject ;
typedef TYPE_2__ PyArrayIterObject ;


 int PyArray_ITER_NEXT (TYPE_2__*) ;
 int PyArray_ToScalar (int ,int ) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int ) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
arraymultiter_next(PyArrayMultiIterObject *multi)
{
    PyObject *ret;
    int i, n;

    n = multi->numiter;
    ret = PyTuple_New(n);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }
    if (multi->index < multi->size) {
        for (i = 0; i < n; i++) {
            PyArrayIterObject *it=multi->iters[i];
            PyTuple_SET_ITEM(ret, i,
                             PyArray_ToScalar(it->dataptr, it->ao));
            PyArray_ITER_NEXT(it);
        }
        multi->index++;
        return ret;
    }
    Py_DECREF(ret);
    return ((void*)0);
}
