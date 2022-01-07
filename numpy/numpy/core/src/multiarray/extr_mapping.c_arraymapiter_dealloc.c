
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * extra_op_iter; int * subspace_iter; int * outer; int extra_op_dtype; int extra_op; int subspace; int ait; int array; } ;
typedef TYPE_1__ PyArrayMapIterObject ;


 int NpyIter_Deallocate (int *) ;
 int PyArray_ResolveWritebackIfCopy (int ) ;
 int PyArray_free (TYPE_1__*) ;
 int Py_XDECREF (int ) ;

__attribute__((used)) static void
arraymapiter_dealloc(PyArrayMapIterObject *mit)
{
    PyArray_ResolveWritebackIfCopy(mit->array);
    Py_XDECREF(mit->array);
    Py_XDECREF(mit->ait);
    Py_XDECREF(mit->subspace);
    Py_XDECREF(mit->extra_op);
    Py_XDECREF(mit->extra_op_dtype);
    if (mit->outer != ((void*)0)) {
        NpyIter_Deallocate(mit->outer);
    }
    if (mit->subspace_iter != ((void*)0)) {
        NpyIter_Deallocate(mit->subspace_iter);
    }
    if (mit->extra_op_iter != ((void*)0)) {
        NpyIter_Deallocate(mit->extra_op_iter);
    }
    PyArray_free(mit);
}
