
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * iter; scalar_t__ finished; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_GetIterIndex (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyInt_FromLong (int ) ;

__attribute__((used)) static PyObject *npyiter_iterindex_get(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0) || self->finished) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is past the end");
        return ((void*)0);
    }

    return PyInt_FromLong(NpyIter_GetIterIndex(self->iter));
}
