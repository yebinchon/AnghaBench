
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_4__ {int * iter; scalar_t__ finished; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_GetNOp (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int Py_DECREF (int *) ;
 int * npyiter_seq_item (TYPE_1__*,int) ;

__attribute__((used)) static PyObject *npyiter_value_get(NewNpyArrayIterObject *self)
{
    PyObject *ret;

    npy_intp iop, nop;

    if (self->iter == ((void*)0) || self->finished) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is past the end");
        return ((void*)0);
    }

    nop = NpyIter_GetNOp(self->iter);


    if (nop == 1) {
        ret = npyiter_seq_item(self, 0);
    }
    else {
        ret = PyTuple_New(nop);
        if (ret == ((void*)0)) {
            return ((void*)0);
        }
        for (iop = 0; iop < nop; ++iop) {
            PyObject *a = npyiter_seq_item(self, iop);
            if (a == ((void*)0)) {
                Py_DECREF(ret);
                return ((void*)0);
            }
            PyTuple_SET_ITEM(ret, iop, a);
        }
    }

    return ret;
}
