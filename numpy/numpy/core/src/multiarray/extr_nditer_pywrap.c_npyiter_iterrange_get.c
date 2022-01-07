
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_3__ {int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_GetIterIndexRange (int *,int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyInt_FromLong (int ) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int ) ;

__attribute__((used)) static PyObject *npyiter_iterrange_get(NewNpyArrayIterObject *self)
{
    npy_intp istart = 0, iend = 0;
    PyObject *ret;

    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return ((void*)0);
    }

    NpyIter_GetIterIndexRange(self->iter, &istart, &iend);

    ret = PyTuple_New(2);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }

    PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(istart));
    PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(iend));

    return ret;
}
