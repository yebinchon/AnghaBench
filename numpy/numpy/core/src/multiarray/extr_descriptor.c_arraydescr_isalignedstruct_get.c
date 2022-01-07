
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int NPY_ALIGNED_STRUCT ;
 int * Py_False ;
 int Py_INCREF (int *) ;
 int * Py_True ;

__attribute__((used)) static PyObject *
arraydescr_isalignedstruct_get(PyArray_Descr *self)
{
    PyObject *ret;
    ret = (self->flags&NPY_ALIGNED_STRUCT) ? Py_True : Py_False;
    Py_INCREF(ret);
    return ret;
}
