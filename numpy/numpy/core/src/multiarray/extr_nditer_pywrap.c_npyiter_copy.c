
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int finished; int started; int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int * NpyIter_Copy (int *) ;
 int NpyIter_Type ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int Py_DECREF (TYPE_1__*) ;
 scalar_t__ npyiter_cache_values (TYPE_1__*) ;
 scalar_t__ npyiter_new (int *,int *,int *) ;

__attribute__((used)) static PyObject *
npyiter_copy(NewNpyArrayIterObject *self)
{
    NewNpyArrayIterObject *iter;

    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator is invalid");
        return ((void*)0);
    }


    iter = (NewNpyArrayIterObject *)npyiter_new(&NpyIter_Type, ((void*)0), ((void*)0));
    if (iter == ((void*)0)) {
        return ((void*)0);
    }


    iter->iter = NpyIter_Copy(self->iter);
    if (iter->iter == ((void*)0)) {
        Py_DECREF(iter);
        return ((void*)0);
    }


    if (npyiter_cache_values(iter) < 0) {
        Py_DECREF(iter);
        return ((void*)0);
    }

    iter->started = self->started;
    iter->finished = self->finished;

    return (PyObject *)iter;
}
