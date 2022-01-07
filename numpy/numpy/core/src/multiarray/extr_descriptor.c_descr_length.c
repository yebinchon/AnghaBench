
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int names; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 scalar_t__ PyDataType_HASFIELDS (TYPE_1__*) ;
 int PyTuple_GET_SIZE (int ) ;

__attribute__((used)) static Py_ssize_t
descr_length(PyObject *self0)
{
    PyArray_Descr *self = (PyArray_Descr *)self0;

    if (PyDataType_HASFIELDS(self)) {
        return PyTuple_GET_SIZE(self->names);
    }
    else {
        return 0;
    }
}
