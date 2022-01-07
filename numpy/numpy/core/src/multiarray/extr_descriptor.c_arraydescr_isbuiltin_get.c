
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fields; int type_num; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int * PyInt_FromLong (long) ;
 scalar_t__ PyTypeNum_ISUSERDEF (int ) ;
 scalar_t__ Py_None ;

__attribute__((used)) static PyObject *
arraydescr_isbuiltin_get(PyArray_Descr *self)
{
    long val;
    val = 0;
    if (self->fields == Py_None) {
        val = 1;
    }
    if (PyTypeNum_ISUSERDEF(self->type_num)) {
        val = 2;
    }
    return PyInt_FromLong(val);
}
