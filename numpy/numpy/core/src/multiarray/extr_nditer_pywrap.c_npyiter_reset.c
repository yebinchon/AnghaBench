
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int started; int finished; int * iter; int * get_multi_index; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NPY_SUCCEED ;
 int * NpyIter_GetGetMultiIndex (int *,int *) ;
 scalar_t__ NpyIter_GetIterSize (int *) ;
 scalar_t__ NpyIter_HasMultiIndex (int *) ;
 scalar_t__ NpyIter_Reset (int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int Py_RETURN_NONE ;
 scalar_t__ npyiter_resetbasepointers (TYPE_1__*) ;

__attribute__((used)) static PyObject *
npyiter_reset(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return ((void*)0);
    }

    if (NpyIter_Reset(self->iter, ((void*)0)) != NPY_SUCCEED) {
        return ((void*)0);
    }
    if (NpyIter_GetIterSize(self->iter) == 0) {
        self->started = 1;
        self->finished = 1;
    }
    else {
        self->started = 0;
        self->finished = 0;
    }

    if (self->get_multi_index == ((void*)0) && NpyIter_HasMultiIndex(self->iter)) {
        self->get_multi_index = NpyIter_GetGetMultiIndex(self->iter, ((void*)0));
    }


    if (npyiter_resetbasepointers(self) != NPY_SUCCEED) {
        return ((void*)0);
    }

    Py_RETURN_NONE;
}
