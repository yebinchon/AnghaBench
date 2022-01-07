
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_3__ {int * iter; scalar_t__ finished; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NPY_MAXDIMS ;
 scalar_t__ NPY_SUCCEED ;
 size_t NpyIter_GetNDim (int *) ;
 scalar_t__ NpyIter_GetShape (int *,size_t*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyInt_FromLong (size_t) ;
 int * PyTuple_New (size_t) ;
 int PyTuple_SET_ITEM (int *,size_t,int ) ;

__attribute__((used)) static PyObject *npyiter_shape_get(NewNpyArrayIterObject *self)
{
    PyObject *ret;
    npy_intp idim, ndim, shape[NPY_MAXDIMS];

    if (self->iter == ((void*)0) || self->finished) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is past the end");
        return ((void*)0);
    }

    if (NpyIter_GetShape(self->iter, shape) == NPY_SUCCEED) {
        ndim = NpyIter_GetNDim(self->iter);
        ret = PyTuple_New(ndim);
        if (ret != ((void*)0)) {
            for (idim = 0; idim < ndim; ++idim) {
                PyTuple_SET_ITEM(ret, idim,
                        PyInt_FromLong(shape[idim]));
            }
            return ret;
        }
    }

    return ((void*)0);
}
