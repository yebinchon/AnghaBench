
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_5__ {int * iter; scalar_t__ finished; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_GetNOp (int *) ;
 scalar_t__ NpyIter_HasDelayedBufAlloc (int *) ;
 scalar_t__ NpySlice_GetIndicesEx (int *,int ,int*,int*,int*,int*) ;
 int PyArray_PyIntAsIntp (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 scalar_t__ PyIndex_Check (int *) ;
 scalar_t__ PyInt_Check (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 int PySequence_Check (int *) ;
 scalar_t__ PySlice_Check (int *) ;
 scalar_t__ error_converting (int ) ;
 int * npyiter_seq_item (TYPE_1__*,int ) ;
 int * npyiter_seq_slice (TYPE_1__*,int,int) ;

__attribute__((used)) static PyObject *
npyiter_subscript(NewNpyArrayIterObject *self, PyObject *op)
{
    if (self->iter == ((void*)0) || self->finished) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is past the end");
        return ((void*)0);
    }

    if (NpyIter_HasDelayedBufAlloc(self->iter)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator construction used delayed buffer allocation, "
                "and no reset has been done yet");
        return ((void*)0);
    }

    if (PyInt_Check(op) || PyLong_Check(op) ||
                    (PyIndex_Check(op) && !PySequence_Check(op))) {
        npy_intp i = PyArray_PyIntAsIntp(op);
        if (error_converting(i)) {
            return ((void*)0);
        }
        return npyiter_seq_item(self, i);
    }
    else if (PySlice_Check(op)) {
        Py_ssize_t istart = 0, iend = 0, istep = 0, islicelength;
        if (NpySlice_GetIndicesEx(op, NpyIter_GetNOp(self->iter),
                                  &istart, &iend, &istep, &islicelength) < 0) {
            return ((void*)0);
        }
        if (istep != 1) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator slicing only supports a step of 1");
            return ((void*)0);
        }
        return npyiter_seq_slice(self, istart, iend);
    }

    PyErr_SetString(PyExc_TypeError,
            "invalid index type for iterator indexing");
    return ((void*)0);
}
