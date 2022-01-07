
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ index; scalar_t__ size; int ao; int dataptr; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayIterObject ;


 int PyArray_ITER_NEXT (TYPE_1__*) ;
 int * PyArray_ToScalar (int ,int ) ;

__attribute__((used)) static PyObject *
arrayiter_next(PyArrayIterObject *it)
{
    PyObject *ret;

    if (it->index < it->size) {
        ret = PyArray_ToScalar(it->dataptr, it->ao);
        PyArray_ITER_NEXT(it);
        return ret;
    }
    return ((void*)0);
}
