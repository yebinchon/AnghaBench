
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
 int npyiter_seq_ass_item (TYPE_1__*,int ,int *) ;
 int npyiter_seq_ass_slice (TYPE_1__*,int,int,int *) ;

__attribute__((used)) static int
npyiter_ass_subscript(NewNpyArrayIterObject *self, PyObject *op,
                        PyObject *value)
{
    if (value == ((void*)0)) {
        PyErr_SetString(PyExc_TypeError,
                "Cannot delete iterator elements");
        return -1;
    }
    if (self->iter == ((void*)0) || self->finished) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is past the end");
        return -1;
    }

    if (NpyIter_HasDelayedBufAlloc(self->iter)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator construction used delayed buffer allocation, "
                "and no reset has been done yet");
        return -1;
    }

    if (PyInt_Check(op) || PyLong_Check(op) ||
                    (PyIndex_Check(op) && !PySequence_Check(op))) {
        npy_intp i = PyArray_PyIntAsIntp(op);
        if (error_converting(i)) {
            return -1;
        }
        return npyiter_seq_ass_item(self, i, value);
    }
    else if (PySlice_Check(op)) {
        Py_ssize_t istart = 0, iend = 0, istep = 0, islicelength = 0;
        if (NpySlice_GetIndicesEx(op, NpyIter_GetNOp(self->iter),
                                  &istart, &iend, &istep, &islicelength) < 0) {
            return -1;
        }
        if (istep != 1) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator slice assignment only supports a step of 1");
            return -1;
        }
        return npyiter_seq_ass_slice(self, istart, iend, value);
    }

    PyErr_SetString(PyExc_TypeError,
            "invalid index type for iterator indexing");
    return -1;
}
