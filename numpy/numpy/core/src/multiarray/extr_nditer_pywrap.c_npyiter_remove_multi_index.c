
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int started; int finished; int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NpyIter_GetIterSize (int *) ;
 int NpyIter_RemoveMultiIndex (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int Py_RETURN_NONE ;
 int npyiter_cache_values (TYPE_1__*) ;

__attribute__((used)) static PyObject *
npyiter_remove_multi_index(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return ((void*)0);
    }

    NpyIter_RemoveMultiIndex(self->iter);

    npyiter_cache_values(self);

    if (NpyIter_GetIterSize(self->iter) == 0) {
        self->started = 1;
        self->finished = 1;
    }
    else {
        self->started = 0;
        self->finished = 0;
    }

    Py_RETURN_NONE;
}
