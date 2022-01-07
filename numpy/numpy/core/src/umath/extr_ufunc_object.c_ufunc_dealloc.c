
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ identity; int * obj; int * identity_value; int userloops; int op_flags; int ptr; int core_signature; int core_offsets; int core_dim_flags; int core_dim_sizes; int core_dim_ixs; int core_num_dims; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;


 int PyArray_free (int ) ;
 int PyObject_GC_Del (TYPE_1__*) ;
 int PyObject_GC_UnTrack (int *) ;
 scalar_t__ PyUFunc_IdentityValue ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int ) ;

__attribute__((used)) static void
ufunc_dealloc(PyUFuncObject *ufunc)
{
    PyObject_GC_UnTrack((PyObject *)ufunc);
    PyArray_free(ufunc->core_num_dims);
    PyArray_free(ufunc->core_dim_ixs);
    PyArray_free(ufunc->core_dim_sizes);
    PyArray_free(ufunc->core_dim_flags);
    PyArray_free(ufunc->core_offsets);
    PyArray_free(ufunc->core_signature);
    PyArray_free(ufunc->ptr);
    PyArray_free(ufunc->op_flags);
    Py_XDECREF(ufunc->userloops);
    if (ufunc->identity == PyUFunc_IdentityValue) {
        Py_DECREF(ufunc->identity_value);
    }
    if (ufunc->obj != ((void*)0)) {
        Py_DECREF(ufunc->obj);
    }
    PyObject_GC_Del(ufunc);
}
