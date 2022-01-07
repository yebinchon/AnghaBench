
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 scalar_t__ NpyIter_HasDelayedBufAlloc (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;

__attribute__((used)) static PyObject *npyiter_has_delayed_bufalloc_get(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return ((void*)0);
    }

    if (NpyIter_HasDelayedBufAlloc(self->iter)) {
        Py_RETURN_TRUE;
    }
    else {
        Py_RETURN_FALSE;
    }
}
