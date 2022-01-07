
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int Py_INCREF (TYPE_1__*) ;

__attribute__((used)) static PyObject *
npyiter_enter(NewNpyArrayIterObject *self)
{
    if (self->iter == ((void*)0)) {
        PyErr_SetString(PyExc_RuntimeError, "operation on non-initialized iterator");
        return ((void*)0);
    }
    Py_INCREF(self);
    return (PyObject *)self;
}
