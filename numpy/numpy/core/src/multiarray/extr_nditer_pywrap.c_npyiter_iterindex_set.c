
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_4__ {scalar_t__ finished; scalar_t__ started; int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NPY_SUCCEED ;
 scalar_t__ NpyIter_GotoIterIndex (int *,int ) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_ValueError ;
 int PyInt_AsLong (int *) ;
 scalar_t__ error_converting (int ) ;
 scalar_t__ npyiter_resetbasepointers (TYPE_1__*) ;

__attribute__((used)) static int npyiter_iterindex_set(NewNpyArrayIterObject *self, PyObject *value)
{
    npy_intp iterindex;

    if (value == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete nditer iterindex");
        return -1;
    }
    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return -1;
    }

    iterindex = PyInt_AsLong(value);
    if (error_converting(iterindex)) {
        return -1;
    }
    if (NpyIter_GotoIterIndex(self->iter, iterindex) != NPY_SUCCEED) {
        return -1;
    }
    self->started = 0;
    self->finished = 0;


    if (npyiter_resetbasepointers(self) != NPY_SUCCEED) {
        return -1;
    }

    return 0;
}
