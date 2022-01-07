
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
struct TYPE_4__ {int * iter; scalar_t__ finished; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NpyIter_GetNOp (int *) ;
 scalar_t__ NpyIter_HasDelayedBufAlloc (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 int PySequence_Check (int *) ;
 int * PySequence_GetItem (int *,scalar_t__) ;
 scalar_t__ PySequence_Size (int *) ;
 int Py_DECREF (int *) ;
 scalar_t__ npyiter_seq_ass_item (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static int
npyiter_seq_ass_slice(NewNpyArrayIterObject *self, Py_ssize_t ilow,
                Py_ssize_t ihigh, PyObject *v)
{
    npy_intp nop;
    Py_ssize_t i;

    if (v == ((void*)0)) {
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
    nop = NpyIter_GetNOp(self->iter);
    if (ilow < 0) {
        ilow = 0;
    }
    else if (ilow >= nop) {
        ilow = nop-1;
    }
    if (ihigh < ilow) {
        ihigh = ilow;
    }
    else if (ihigh > nop) {
        ihigh = nop;
    }

    if (!PySequence_Check(v) || PySequence_Size(v) != ihigh-ilow) {
        PyErr_SetString(PyExc_ValueError,
                "Wrong size to assign to iterator slice");
        return -1;
    }

    for (i = ilow; i < ihigh ; ++i) {
        PyObject *item = PySequence_GetItem(v, i-ilow);
        if (item == ((void*)0)) {
            return -1;
        }
        if (npyiter_seq_ass_item(self, i, item) < 0) {
            Py_DECREF(item);
            return -1;
        }
        Py_DECREF(item);
    }

    return 0;
}
