
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
struct TYPE_3__ {int * iter; } ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int * NpyIter_GetIterView (int *,scalar_t__) ;
 scalar_t__ NpyIter_GetNOp (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyTuple_New (scalar_t__) ;
 int PyTuple_SET_ITEM (int *,scalar_t__,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *npyiter_itviews_get(NewNpyArrayIterObject *self)
{
    PyObject *ret;

    npy_intp iop, nop;

    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return ((void*)0);
    }
    nop = NpyIter_GetNOp(self->iter);

    ret = PyTuple_New(nop);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }
    for (iop = 0; iop < nop; ++iop) {
        PyArrayObject *view = NpyIter_GetIterView(self->iter, iop);

        if (view == ((void*)0)) {
            Py_DECREF(ret);
            return ((void*)0);
        }
        PyTuple_SET_ITEM(ret, iop, (PyObject *)view);
    }

    return ret;
}
