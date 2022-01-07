
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
struct TYPE_4__ {int started; int finished; int * iter; int * get_multi_index; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NPY_SUCCEED ;
 int * NpyIter_GetGetMultiIndex (int *,int *) ;
 scalar_t__ NpyIter_HasMultiIndex (int *) ;
 scalar_t__ NpyIter_ResetToIterIndexRange (int *,scalar_t__,scalar_t__,int *) ;
 int PyArg_ParseTuple (int *,char*,scalar_t__*,scalar_t__*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_ValueError ;
 scalar_t__ npyiter_resetbasepointers (TYPE_1__*) ;

__attribute__((used)) static int npyiter_iterrange_set(NewNpyArrayIterObject *self, PyObject *value)
{
    npy_intp istart = 0, iend = 0;

    if (value == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete nditer iterrange");
        return -1;
    }
    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return -1;
    }

    if (!PyArg_ParseTuple(value, "nn", &istart, &iend)) {
        return -1;
    }

    if (NpyIter_ResetToIterIndexRange(self->iter, istart, iend, ((void*)0))
                                                    != NPY_SUCCEED) {
        return -1;
    }
    if (istart < iend) {
        self->started = self->finished = 0;
    }
    else {
        self->started = self->finished = 1;
    }

    if (self->get_multi_index == ((void*)0) && NpyIter_HasMultiIndex(self->iter)) {
        self->get_multi_index = NpyIter_GetGetMultiIndex(self->iter, ((void*)0));
    }


    if (npyiter_resetbasepointers(self) != NPY_SUCCEED) {
        return -1;
    }

    return 0;
}
