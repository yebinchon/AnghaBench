
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * names; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int PyDataType_HASFIELDS (TYPE_1__*) ;
 int Py_INCREF (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
arraydescr_names_get(PyArray_Descr *self)
{
    if (!PyDataType_HASFIELDS(self)) {
        Py_RETURN_NONE;
    }
    Py_INCREF(self->names);
    return self->names;
}
