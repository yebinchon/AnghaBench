
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_3__ {int ** dtypes; int * iter; } ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 size_t NpyIter_GetNOp (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyTuple_New (size_t) ;
 int PyTuple_SET_ITEM (int *,size_t,int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *npyiter_dtypes_get(NewNpyArrayIterObject *self)
{
    PyObject *ret;

    npy_intp iop, nop;
    PyArray_Descr **dtypes;

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
    dtypes = self->dtypes;
    for (iop = 0; iop < nop; ++iop) {
        PyArray_Descr *dtype = dtypes[iop];

        Py_INCREF(dtype);
        PyTuple_SET_ITEM(ret, iop, (PyObject *)dtype);
    }

    return ret;
}
