
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_3__ {int * iter; int (* get_multi_index ) (int *,size_t*) ;scalar_t__ finished; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NPY_MAXDIMS ;
 size_t NpyIter_GetNDim (int *) ;
 scalar_t__ NpyIter_HasDelayedBufAlloc (int *) ;
 int NpyIter_HasMultiIndex (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyInt_FromLong (size_t) ;
 int * PyTuple_New (size_t) ;
 int PyTuple_SET_ITEM (int *,size_t,int ) ;
 int stub1 (int *,size_t*) ;

__attribute__((used)) static PyObject *npyiter_multi_index_get(NewNpyArrayIterObject *self)
{
    PyObject *ret;
    npy_intp idim, ndim, multi_index[NPY_MAXDIMS];

    if (self->iter == ((void*)0) || self->finished) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is past the end");
        return ((void*)0);
    }

    if (self->get_multi_index != ((void*)0)) {
        ndim = NpyIter_GetNDim(self->iter);
        self->get_multi_index(self->iter, multi_index);
        ret = PyTuple_New(ndim);
        if (ret == ((void*)0)) {
            return ((void*)0);
        }
        for (idim = 0; idim < ndim; ++idim) {
            PyTuple_SET_ITEM(ret, idim,
                    PyInt_FromLong(multi_index[idim]));
        }
        return ret;
    }
    else {
        if (!NpyIter_HasMultiIndex(self->iter)) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator is not tracking a multi-index");
            return ((void*)0);
        }
        else if (NpyIter_HasDelayedBufAlloc(self->iter)) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator construction used delayed buffer allocation, "
                    "and no reset has been done yet");
            return ((void*)0);
        }
        else {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator is in an invalid state");
            return ((void*)0);
        }
    }
}
