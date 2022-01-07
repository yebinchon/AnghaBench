
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_3__ {int * iter; scalar_t__ finished; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int * NpyIter_GetIndexPtr (int *) ;
 scalar_t__ NpyIter_HasIndex (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyInt_FromLong (int ) ;

__attribute__((used)) static PyObject *npyiter_index_get(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0) || self->finished) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is past the end");
        return ((void*)0);
    }

    if (NpyIter_HasIndex(self->iter)) {
        npy_intp ind = *NpyIter_GetIndexPtr(self->iter);
        return PyInt_FromLong(ind);
    }
    else {
        PyErr_SetString(PyExc_ValueError,
                "Iterator does not have an index");
        return ((void*)0);
    }
}
